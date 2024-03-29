CREATE OR REPLACE FUNCTION totalGDP()
RETURNS table (name VARCHAR(20), value numeric, type VARCHAR(20))
AS $$
  DECLARE table_name VARCHAR(20);
  
  begin
	drop table if exists names;
    CREATE TEMP TABLE NAMES (Name VARCHAR(20));
    INSERT INTO NAMES VALUES ('kehutanan');
    INSERT INTO NAMES VALUES ('perkebunan');
    INSERT INTO NAMES VALUES ('mineral');
    INSERT INTO NAMES VALUES ('tanah');
    INSERT INTO NAMES VALUES ('minyak_bumi');

    FOR table_name IN (SELECT * FROM NAMES)
    LOOP
  	return query execute format ('
		SELECT SDA.NamaKomoditi AS name, (SUM(H.Pendapatan) / 1000000) value, CAST(%L AS VARCHAR(20)) AS type
		FROM HASIL H
	  	JOIN SUMBER_DAYA_ALAM SDA ON H.IdKomoditi = SDA.Id
	  	WHERE H.IdKomoditi IN (SELECT Id FROM %I)
	  	GROUP BY SDA.NamaKomoditi', table_name, table_name);
    END LOOP;
    
	END;
$$ LANGUAGE plpgsql;


CREATE VIEW topPotensi
AS
  SELECT SDA.NamaKomoditi AS name , SUM(BI.Angka)/1000 AS Total, W.UnitGeografis
  FROM BERADA_DI BI
    JOIN SUMBER_DAYA_ALAM SDA ON SDA.Id = BI.IdKomoditi
    JOIN WILAYAH W ON W.id = BI.IdKota
  WHERE BI.Satuan = 'Bijih' AND BI.IdKomoditi IN (
		SELECT 
      BI1.IdKomoditi
    FROM BERADA_DI BI1
    GROUP BY BI1.IdKomoditi
    ORDER BY SUM(BI1.Angka) DESC
    LIMIT 6
		)
  GROUP BY SDA.NamaKomoditi, W.UnitGeografis;


CREATE VIEW hasil5Tahun
AS
  SELECT SDA.NamaKomoditi, H.Tahun, H.Angka
  FROM SUMBER_DAYA_ALAM SDA
    JOIN HASIL H ON H.IdKomoditi = SDA.Id
  WHERE Satuan = 'Ton' AND SDA.id IN (
	SELECT H.IdKomoditi
    FROM HASIL H
    GROUP BY H.IdKomoditi
    HAVING SUM(H.Tahun) = 10090
	);


CREATE  VIEW VIEW1
AS
  SELECT SDA.NamaKomoditi
  FROM SUMBER_DAYA_ALAM SDA
  WHERE SDA.Id IN( 
	SELECT MINERAL.Id
  FROM MINERAL
  WHERE MINERAL.Id IN( 
	SELECT
    BERADA_DI.IdKomoditi
  FROM BERADA_DI
  WHERE BERADA_DI.IdKota IN(
	SELECT WILAYAH.Id
  FROM WILAYAH
  WHERE WILAYAH.UnitGeografis = 'Kalimantan'
	)
  GROUP BY BERADA_DI.IdKomoditi
  ORDER BY COUNT(BERADA_DI.IdKomoditi) DESC
  LIMIT 1
	)
	);

CREATE  VIEW VIEW2
AS
  SELECT 
    P.Nama
  FROM PERUSAHAAN P
    RIGHT JOIN HASIL H ON P.Id=H.IdPerusahaan
  WHERE P.Jenis<>'PT'
  ORDER BY H.Pendapatan DESC
  LIMIT 1;


CREATE  VIEW VIEW3
AS
  SELECT PERUSAHAAN.Nama
  FROM PERUSAHAAN
  WHERE id IN (
        SELECT 
    PS.idPerusahaanBeli
  FROM PERUSAHAAN P
    RIGHT JOIN PERUSAHAAN_SWASTA PS ON P.Id=PS.Id
  WHERE PS.idPerusahaanBeli IS NOT NULL
  GROUP BY PS.idPerusahaanBeli
  ORDER BY COUNT(PS.idPerusahaanBeli) DESC
  LIMIT 1
    );


CREATE VIEW VIEW4
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE Id IN (
        SELECT 
    SDA.Id
  FROM SUMBER_DAYA_ALAM SDA
    JOIN KEGUNAAN K ON SDA.Id=K.Id
  GROUP BY SDA.Id
  ORDER BY COUNT(K.Id) DESC
  LIMIT 1
    );


CREATE VIEW VIEW5
AS
  SELECT 
    SDA.NamaKomoditi, K.Famili
  FROM KEHUTANAN K
    JOIN SUMBER_DAYA_ALAM SDA ON K.Id=SDA.Id
  WHERE K.KesesuaianEkologis='Dataran rendah'
  ORDER BY K.PERTUMBUHAN DESC
  LIMIT 1;


CREATE VIEW VIEW6
AS
  SELECT WILAYAH.Provinsi
  FROM WILAYAH
  WHERE WILAYAH.Id = (
        SELECT 
    W.Id
  FROM WILAYAH W
    JOIN PERUSAHAAN P ON W.Id=P.IdWilayah
  GROUP BY W.Id
  ORDER BY COUNT(P.IdWilayah) DESC
  LIMIT 1 
    );


CREATE VIEW VIEW7
AS
  SELECT
    WILAYAH.Provinsi
  FROM WILAYAH
  WHERE WILAYAH.Id IN(
	SELECT BERADA_DI.IdKota
  FROM BERADA_DI
  WHERE BERADA_DI.IdKomoditi IN (
	SELECT MINERAL.Id
  FROM MINERAL
	)
	)
  GROUP BY WILAYAH.Provinsi
  ORDER BY COUNT(WILAYAH.Provinsi) DESC
  LIMIT 1;


CREATE VIEW VIEW8
AS
  SELECT PERUSAHAAN.Nama
  FROM PERUSAHAAN
  WHERE Id IN (
        SELECT 
    P.Id
  FROM PERUSAHAAN P
    JOIN MENGOLAH M ON P.Id=M.IdPerusahaan
  WHERE M.IdKomoditi IN  (
            SELECT SDA.Id
  FROM SUMBER_DAYA_ALAM SDA
  WHERE SDA.Jenis='Terbarukan'
        )
  ORDER BY M.Luas DESC, P.TahunBerdiri ASC
  LIMIT 1
    );


CREATE VIEW VIEW9
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE Id IN (
        SELECT 
    P.Id
  FROM PERKEBUNAN P
  WHERE P.SuhuOptimal < (
            SELECT AVG(SuhuOptimal)
  FROM PERKEBUNAN)
  ORDER BY WaktuPanen DESC
  LIMIT 1
    );


CREATE VIEW VIEW10
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE SUMBER_DAYA_ALAM.Id IN ( 
	SELECT 
    BERADA_DI.IdKomoditi
  FROM BERADA_DI
  WHERE BERADA_DI.IdKomoditi IN( 
	SELECT PERTAMBANGAN.Id
  FROM PERTAMBANGAN
  WHERE PERTAMBANGAN.Asal = 'Sedimentasi' 
	)
  GROUP BY BERADA_DI.IdKomoditi
  ORDER BY COUNT(BERADA_DI.IdKota) DESC 
  LIMIT 1
	);


CREATE VIEW VIEW11
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE Id IN (
        SELECT 
    MN.Id
  FROM MINERAL MN
    JOIN (
            SELECT MG.IdKomoditi, COUNT(*) countKomoditi
    FROM MENGOLAH MG
    GROUP BY MG.IdKomoditi
        ) AS olahP ON MN.Id=olahP.IdKomoditi
  WHERE MN.KekerasanMohs > (SELECT AVG(KekerasanMohs)
  FROM MINERAL)
  ORDER BY olahP.countKomoditi DESC
  LIMIT 1
    );


CREATE VIEW VIEW12
AS
  SELECT SDA.NamaEnglish
  FROM SUMBER_DAYA_ALAM SDA
  WHERE SDA.Id IN( 
	SELECT
    TANAH.Id
  FROM TANAH
  ORDER BY TANAH.Ukuran ASC 
  LIMIT 1
	);


CREATE VIEW VIEW13
AS
  SELECT SDA.NamaKomoditi, SDA.Jenis
  FROM SUMBER_DAYA_ALAM SDA
  WHERE SDA.Id = ( 
	SELECT
    T.Id
  FROM TANAH T
    JOIN KANDUNGAN_TANAH KT ON T.Id=KT.Id
  GROUP BY T.Id
  ORDER BY COUNT(*) DESC 
  LIMIT 1
	);


CREATE VIEW VIEW14
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE SUMBER_DAYA_ALAM.Id IN (
	SELECT MENGOLAH.IdKomoditi
    FROM MENGOLAH
    WHERE MENGOLAH.IdKota IN(
	SELECT 
      MENGOLAH.IdKota
    FROM MENGOLAH
    WHERE MENGOLAH.IdKota IN(
	SELECT WILAYAH.Id
    FROM WILAYAH
    WHERE WILAYAH.UnitGeografis = 'Kalimantan'
	)
    GROUP BY MENGOLAH.IdKota
    ORDER BY COUNT(MENGOLAH.IdKomoditi) DESC
    LIMIT 1
	)
	)
    AND SUMBER_DAYA_ALAM.Id IN(
	SELECT MINERAL.Id
    FROM MINERAL
	);


CREATE VIEW VIEW15
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE Id IN (
        SELECT 
    MYK.Id
  FROM MINYAK_BUMI MYK
  WHERE MYK.JumlahAtom > (SELECT AVG(JumlahAtom)
  FROM MINYAK_BUMI)
  ORDER BY MYK.TitikDidih DESC
  LIMIT 1
    );


CREATE VIEW VIEW16
AS
  SELECT 
    KT.Kandungan
  FROM KANDUNGAN_TANAH KT
  GROUP BY KT.Kandungan
  ORDER BY COUNT(KT.Id) DESC
  LIMIT 1;


CREATE VIEW VIEW17
AS
  SELECT 
    SDA.NamaKomoditi, SUM(HS.Pendapatan) AS "Pendapatan Total (Rp)"
  FROM SUMBER_DAYA_ALAM SDA
    JOIN PERTAMBANGAN PR ON SDA.Id=PR.Id
    JOIN HASIL HS ON SDA.Id=HS.IdKomoditi
  WHERE SDA.Jenis='Tidak Terbarukan'
    AND
    PR.Golongan='Senyawa Hidrokarbon'
  GROUP BY SDA.NamaKomoditi
  ORDER BY SUM(HS.Pendapatan) DESC
  LIMIT 1;


CREATE VIEW VIEW18
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE SUMBER_DAYA_ALAM.Id IN(
	SELECT 
    MENGOLAH.IdKomoditi
  FROM MENGOLAH
  WHERE MENGOLAH.IdKomoditi IN(
	SELECT PERKEBUNAN.Id
  FROM PERKEBUNAN
  WHERE PERKEBUNAN.JenisTanaman = 'Musiman'
	)
  GROUP BY MENGOLAH.IdKomoditi
  ORDER BY COUNT(MENGOLAH.Latitude) DESC
  LIMIT 1
	);


CREATE VIEW VIEW19
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE SUMBER_DAYA_ALAM.Jenis = 'Tidak Terbarukan'
    AND SUMBER_DAYA_ALAM.Id IN(
        SELECT MENGOLAH.IdKomoditi
    FROM MENGOLAH
    WHERE MENGOLAH.JenisPengolahan = 'Di atas tanah'
      AND MENGOLAH.Luas IN(
            SELECT 
        MENGOLAH.Luas
      FROM MENGOLAH
      ORDER BY MENGOLAH.Luas ASC
      LIMIT 1
        )
    );


CREATE VIEW VIEW20
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE Id IN (
        SELECT
    SDA.Id
  FROM SUMBER_DAYA_ALAM SDA
    JOIN HASIL H ON SDA.Id=H.IdKomoditi
  WHERE SDA.Jenis='Terbarukan'
    AND H.IdKota IN ( 
            SELECT W.Id
    FROM WILAYAH W
    WHERE W.UnitGeografis='Jawa'
        )
  GROUP BY SDA.Id
  ORDER BY SUM(H.Pendapatan) DESC
  LIMIT 1
    );


CREATE VIEW VIEW21
AS
  SELECT 
    SDA.NamaEnglish
  FROM SUMBER_DAYA_ALAM SDA
    JOIN KEHUTANAN K ON SDA.Id=K.Id
  ORDER BY K.KepadatanKayu DESC
  LIMIT 1;


CREATE VIEW VIEW22
AS
  SELECT
    P.Alamat, sumChild
  FROM PERUSAHAAN P
    JOIN (
	SELECT P.IdInduk, COUNT(*) sumChild
    FROM PERUSAHAAN P
    WHERE P.IdInduk IS NOT NULL
    GROUP BY P.IdInduk
	) AS CHILD ON P.Id=CHILD.IdInduk
  WHERE P.Milik='Negara'
    AND
    P.Id IN (
	SELECT M.IdPerusahaan
    FROM MENGOLAH M
    WHERE M.IdKomoditi IN (
	SELECT SDA.Id
    FROM SUMBER_DAYA_ALAM SDA
    WHERE SDA.Jenis='Terbarukan' 
	)
	)
  ORDER BY sumChild DESC
  LIMIT 1;


CREATE VIEW VIEW23
AS
  SELECT 
    NamaOlahan
  FROM PERUSAHAAN_SWASTA
  WHERE NamaOlahan IS NOT NULL
  GROUP BY NamaOlahan
  ORDER BY COUNT(*) DESC
  LIMIT 1;


CREATE VIEW VIEW24
AS
  SELECT PERUSAHAAN.Nama
  FROM PERUSAHAAN
  WHERE Id IN (
        SELECT 
    P.Id
  FROM PERUSAHAAN P
    JOIN MENGOLAH M ON P.Id=M.IdPerusahaan
  WHERE P.Jenis<>'PT'
  GROUP BY P.Id
  ORDER BY COUNT(*) DESC
  LIMIT 1
    );


CREATE VIEW VIEW25
AS
  SELECT SUMBER_DAYA_ALAM.NamaKomoditi
  FROM SUMBER_DAYA_ALAM
  WHERE SUMBER_DAYA_ALAM.Id IN(
        SELECT MENGOLAH.IdKomoditi
  FROM MENGOLAH
  WHERE MENGOLAH.Latitude > 3 AND MENGOLAH.Latitude < 5
    AND MENGOLAH.Longitude > 90 AND MENGOLAH.Longitude < 100
    );


CREATE VIEW VIEW26
AS
  SELECT
    H.Tahun
  FROM HASIL H
    JOIN SUMBER_DAYA_ALAM SDA ON H.IdKomoditi=SDA.Id
  WHERE SDA.Jenis='Terbarukan'
  GROUP BY H.Tahun
  ORDER BY SUM(H.Pendapatan) DESC
  LIMIT 1;


CREATE VIEW VIEW27
AS
  SELECT PERUSAHAAN.Nama
  FROM PERUSAHAAN
  WHERE Id IN (
        SELECT
    P.Id
  FROM PERUSAHAAN P
    JOIN PERUSAHAAN_SWASTA PS ON P.Id=PS.Id
  WHERE P.Sektor='Migas'
  ORDER BY P.TahunBerdiri DESC
  LIMIT 1
    );


CREATE VIEW VIEW28
AS
  SELECT SDA.NamaKomoditi
  FROM SUMBER_DAYA_ALAM SDA
  WHERE SDA.Id IN(
        SELECT PERTAMBANGAN.Id
  FROM PERTAMBANGAN
  WHERE PERTAMBANGAN.Golongan = 'Logam Transisi'
    AND PERTAMBANGAN.Id IN(
            SELECT MINERAL.Id
    FROM MINERAL
    WHERE MINERAL.Kilau = 'Metalik'
        )
    );


CREATE VIEW VIEW29
AS
  SELECT 
    W.Provinsi
  FROM WILAYAH W
    JOIN MENGOLAH M ON W.Id=M.IdKota
  WHERE M.JenisPengolahan NOT IN ('Di atas tanah','Di bawah tanah')
  ORDER BY M.Luas DESC
  LIMIT 1;


CREATE VIEW VIEW30
AS
  SELECT PERUSAHAAN.Nama
  FROM PERUSAHAAN
  WHERE Id IN (
        SELECT 
    T.Id
  FROM TELEPON T
  GROUP BY T.Id
  ORDER BY COUNT(T.Telepon) DESC
  LIMIT 1
    );