USE DATAVERSE;
GO
INSERT INTO dbo.SUMBER_DAYA_ALAM
VALUES
    (1, 'Jati', 'Teak', 'Terbarukan'),
    (2, 'Mahoni', 'Mahogany', 'Terbarukan'),
    (3, 'Pinus', 'Pine', 'Terbarukan'),
    (4, 'Sonokeling', 'Rosewood', 'Terbarukan'),
    (5, 'Tebu', 'Sugarcane', 'Terbarukan'),
    (6, 'Kopi', 'Coffee', 'Terbarukan'),
    (7, 'Jagung', 'Corn', 'Terbarukan'),
    (8, 'Kayu putih', 'Eucalyptus', 'Terbarukan'),
    (9, 'Tembakau', 'Tobacoo', 'Terbarukan'),
    (10, 'Padi', 'Rice', 'Terbarukan'),
    (11, 'Kelapa sawit', 'Palm', 'Terbarukan'),
    (12, 'Sagu', 'Sago', 'Terbarukan'),
    (13, 'Edamame', 'Edamame', 'Terbarukan'),
    (14, 'Karet', 'Rubber', 'Terbarukan'),
    (15, 'Kakao', 'Cocoa', 'Terbarukan'),
    (16, 'Gmelina', 'Gmelina', 'Terbarukan'),
    (17, 'Sengon', 'Sengon', 'Terbarukan'),
    (18, 'Batu bara', 'Coal', 'Tidak Terbarukan'),
    (19, 'Bauksit', 'Bauxite', 'Tidak Terbarukan'),
    (20, 'Nikel', 'Nickel', 'Tidak Terbarukan'),
    (21, 'Emas', 'Gold', 'Tidak Terbarukan'),
    (22, 'Perak', 'Silver', 'Tidak Terbarukan'),
    (23, 'Timah', 'Tin', 'Tidak Terbarukan'),
    (24, 'Aluminium', 'Aluminum', 'Tidak Terbarukan'),
    (25, 'Besi', 'Steel', 'Tidak Terbarukan'),
    (26, 'Tembaga', 'Copper', 'Tidak Terbarukan'),
    (27, 'Semen', 'Cement', 'Tidak Terbarukan'),
    (28, 'Andesit', 'Andesite', 'Tidak Terbarukan'),
    (29, 'Tanah liat', 'Clay', 'Tidak Terbarukan'),
    (30, 'Pasir Sungai', 'River sand', 'Tidak Terbarukan'),
    (31, 'Kapur', 'Limestone', 'Tidak Terbarukan'),
    (32, 'Pasir Silika', 'Silica sand', 'Tidak Terbarukan'),
    (33, 'Dolomit', 'Dolomite', 'Tidak Terbarukan'),
    (34, 'Humus', 'Humus', 'Tidak Terbarukan'),
    (35, 'Mulsa', 'Mulch', 'Tidak Terbarukan'),
    (36, 'Kerikil', 'Gravel', 'Tidak Terbarukan'),
    (37, 'Bensin', 'Fuel', 'Tidak Terbarukan'),
    (38, 'Kerosin', 'Kerosene', 'Tidak Terbarukan'),
    (39, 'Aspal', 'Ashpalt', 'Tidak Terbarukan'),
    (40, 'Oli', 'Oil', 'Tidak Terbarukan'),
    (41, 'Solar', 'Diesel fuel', 'Tidak Terbarukan'),
    (42, 'Nafta', 'Naphtha', 'Tidak Terbarukan'),
    (43, 'Lilin', 'Parafin', 'Tidak Terbarukan'),
    (44, 'Gas', 'Gas', 'Tidak Terbarukan'),
    (45, 'Petrolum Eter', 'Petroleum Ether', 'Tidak Terbarukan'),
    (46, 'Avtur', 'Avtur', 'Tidak Terbarukan'),
    (47, 'Cendana', 'Sandalwood', 'Terbarukan'),
    (48, 'Kamper', 'Camphor', 'Terbarukan'),
    (49, 'Glugu', 'Grumphy', 'Terbarukan'),
    (50, 'Sungkai', 'Sungkai', 'Terbarukan'),
    (51, 'Cengkih', 'Clove', 'Terbarukan'),
    (52, 'Tras', 'Pozzolan', 'Tidak Terbarukan'),
    (53, 'Pasir Kuarsa', 'Quartz', 'Tidak Terbarukan'),
    (54, 'Rotan', 'Rattan', 'Terbarukan'),
    (55, 'Teh', 'Teak', 'Terbarukan'),
    (56, 'Stroberi', 'Strawberry', 'Terbarukan'),
    (57, 'Bluberi', 'Blueberry', 'Terbarukan'),
    (58, 'Kedelai', 'Soybean', 'Terbarukan');

INSERT INTO dbo.KEHUTANAN
VALUES
    (1, N'Lamiaceae', N'Dataran rendah', 800, 23),
    (2, N'Meliaceae', N'Pasir payau', 750, 25),
    (3, N'Pinaceae', N'Dataran tinggi', 600, 100),
    (4, N'Fabaceae', N'Sabana', 850, 35),
    (8, N'Myrtaceae', N'Rawa-rawa', 646, 2),
    (16, N'Lamiaceae', N'Dataran rendah', 450, 7),
    (17, N'Fabaceae', N'Dataran tinggi', 379, 5),
    (47, N'Saltalaceae', N'Dataran tinggi', 590, 20),
    (48, N'Lauraceae', N'Dataran rendah', 410, 15),
    (49, N'Arecaceae', N'Dataran rendah', 400, 30),
    (50, N'Verbenaceae', N'Dataran rendah', 370, 27),
    (54, N'Arecaceae', N'Dataran rendah', 320, 96);


INSERT INTO dbo.PERKEBUNAN
VALUES
    (5, 'Poaceae', 29, 11, 'Tahunan'),
    (6, 'Madder', 20, 10, 'Tahunan'),
    (7, 'Poaceae', 30, 3, 'Musiman'),
    (9, 'Solanaceae', 25, 3, 'Musiman'),
    (10, 'Poaceae', 24, 1, 'Musiman'),
    (11, 'Arecaceae', 29, 31, 'Tahunan'),
    (12, 'Arecaceae', 24.5, 72, 'Tahunan'),
    (13, 'Fabaceae', 25, 2, 'Musiman'),
    (14, 'Euphorbiaceae', 27, 60, 'Tahunan'),
    (15, 'Pythiaceae', 26, 36, 'Tahunan'),
    (51, 'Myrtaceae', 26, 60, 'Tahunan'),
    (55, 'Theaceae', 25, 48, 'Tahunan'),
    (56, 'Rosaceae', 24, 5, 'Musiman'),
    (57, 'Ericaceae', 24, 5, 'Musiman'),
    (58, 'Fabaceae', 26, 3, 'Musiman');


INSERT INTO dbo.PERTAMBANGAN
VALUES
    (18, N'A', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (19, N'C', N'Lateritisasi', N'Alumunium'),
    (20, N'A', N'Lateritisasi', N'Logam Transisi'),
    (21, N'B', N'Meteorisasi', N'Logam Transisi'),
    (22, N'A', N'Meteorisasi', N'Logam Transisi'),
    (23, N'A', N'Sedimentasi', N'Logam Transisi'),
    (24, N'C', N'Pasivasi', N'Alumunium'),
    (25, N'B', N'Oksidasi', N'Logam Transisi'),
    (26, N'B', N'Oksidasi', N'Logam Transisi'),
    (27, N'C', N'Sedimentasi', N'Campuran'),
    (28, N'C', N'Vulkanisasi', N'Senyawa Silikon'),
    (29, N'C', N'Sedimentasi', N'Koloid'),
    (30, N'C', N'Sedimentasi', N'Campuran Heterogen'),
    (31, N'C', N'Sedimentasi', N'Senyawa Organik'),
    (32, N'C', N'Sedimentasi', N'Senyawa Anorganik'),
    (33, N'C', N'Sedimentasi', N'Senyawa Karbonat'),
    (34, N'C', N'Sedimentasi', N'Campuran Heterogen'),
    (35, N'C', N'Sedimentasi', N'Campuran Heterogen'),
    (36, N'C', N'Sedimentasi', N'Campuran Heterogen'),
    (37, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (38, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (39, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (40, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (41, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (42, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (43, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (44, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (45, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (46, N'C', N'Sedimentasi', N'Senyawa Hidrokarbon'),
    (52, N'C', N'Sedimentasi', N'Campuran Heterogen'),
    (53, N'C', N'Sedimentasi', N'Camburan Heterogen');


INSERT INTO dbo.MINERAL
VALUES
    (18, N'Tidak berkilau', N'Lignite', 2.5, N'Isometric'),
    (19, N'Seperti kaca', N'Oxide', 3, N'Orthorombic'),
    (20, N'Metalik', N'Laterite', 5.3, N'Hexagonal'),
    (21, N'Metalik', N'Native', 2.7, N'Isometric'),
    (22, N'Metalik', N'Native', 2.7, N'Isometric'),
    (23, N'Metalik', N'Cassiterite', 1.5, N'Tetragonal'),
    (24, N'Seperti kaca', N'Oxide', 6.5, N'Orthorombic'),
    (25, N'Metalik', N'Oxide', 5.5, N'Trigonal'),
    (26, N'Metalik', N'Sulfide', 3.5, N'Tetragonal'),
    (28, N'Tidak berkilau', N'Andesite', 6, N'Porfiritic'),
    (31, N'Tidak berkilau', N'Calcite', 3, N'Trigonal'),
    (33, N'Seperti kaca', N'Carbonate', 3.5, N'Trigonal'),
    (53, N'Seperti kaca', N'Silicate', 7, N'Trigonal');


INSERT INTO dbo.TANAH
VALUES
    (27, 0.003, N'Grumusol'),
    (29, 0.0015, N'Latosol'),
    (30, 1.5, N'Andosol'),
    (32, 0.037, N'Andosol'),
    (34, 1, N'Humus'),
    (35, 1, N'Andosol'),
    (36, 10, N'Grumusol'),
    (52, 0.04, N'Andosol');

INSERT INTO dbo.MINYAK_BUMI
VALUES
    (39, 525, 30),
    (40, 425, 19),
    (41, 310, 18),
    (42, 165, 11),
    (37, 110, 12),
    (38, 240, 16),
    (43, 350, 20),
    (44, 20, 4),
    (45, 60, 6),
    (46, 275, 10);

INSERT INTO WILAYAH
VALUES
    (114, N'Kab. Aceh Timur', N'Aceh', N'Sumatera'),
    (115, N'Kab. Aceh Tengah', N'Aceh', N'Sumatera'),
    (116, N'Kab. Aceh Barat', N'Aceh', N'Sumatera'),
    (117, N'Kab. Aceh Selatan', N'Aceh', N'Sumatera'),
    (118, N'Kab. Aceh Tenggara', N'Aceh', N'Sumatera'),
    (119, N'Kab. Simeulue', N'Aceh', N'Sumatera'),
    (120, N'Kab. Bireuen', N'Aceh', N'Sumatera'),
    (121, N'Kab. Aceh Singkil', N'Aceh', N'Sumatera'),
    (122, N'Kab. Aceh Tamiang', N'Aceh', N'Sumatera'),
    (123, N'Kab. Nagan Raya', N'Aceh', N'Sumatera'),
    (124, N'Kab. Aceh Jaya', N'Aceh', N'Sumatera'),
    (125, N'Kab. Aceh Barat Daya', N'Aceh', N'Sumatera'),
    (126, N'Kab. Gayo Lues', N'Aceh', N'Sumatera'),
    (127, N'Kab. Bener Meriah', N'Aceh', N'Sumatera'),
    (128, N'Kab. Pidie Jaya', N'Aceh', N'Sumatera'),
    (129, N'Kota Sabang', N'Aceh', N'Sumatera'),
    (130, N'Kota Banda Aceh', N'Aceh', N'Sumatera'),
    (131, N'Kota Lhokseumawe', N'Aceh', N'Sumatera'),
    (132, N'Kota Langsa', N'Aceh', N'Sumatera'),
    (133, N'Kab. Sabussalam', N'Aceh', N'Sumatera'),
    (134, N'Kab. Deli Serdang', N'Sumatera Utara', N'Sumatera'),
    (135, N'Kab. Langkat', N'Sumatera Utara', N'Sumatera'),
    (136, N'Kab. Karo', N'Sumatera Utara', N'Sumatera'),
    (137, N'Kab. Simalungun', N'Sumatera Utara', N'Sumatera'),
    (138, N'Kab. Dairi', N'Sumatera Utara', N'Sumatera'),
    (139, N'Kab. Asahan', N'Sumatera Utara', N'Sumatera'),
    (140, N'Kab. Labuhan Batu', N'Sumatera Utara', N'Sumatera'),
    (141, N'Kab. Tapanuli Utara', N'Sumatera Utara', N'Sumatera'),
    (142, N'Kab. Tapanuli Tengah', N'Sumatera Utara', N'Sumatera'),
    (143, N'Kab. Tapanuli Selatan', N'Sumatera Utara', N'Sumatera'),
    (144, N'Kab. Nias', N'Sumatera Utara', N'Sumatera'),
    (145, N'Kab. Mandailing Natal', N'Sumatera Utara', N'Sumatera'),
    (146, N'Kab. Toba Samosir', N'Sumatera Utara', N'Sumatera'),
    (147, N'Kab. Nias Selatan', N'Sumatera Utara', N'Sumatera'),
    (148, N'Kab. Pak pak Bharat', N'Sumatera Utara', N'Sumatera'),
    (149, N'Kab. Humbang Hasudutan', N'Sumatera Utara', N'Sumatera'),
    (150, N'Kab. Samosir', N'Sumatera Utara', N'Sumatera'),
    (151, N'Kab. Serdang Bedagai', N'Sumatera Utara', N'Sumatera'),
    (152, N'Kab. Batubara', N'Sumatera Utara', N'Sumatera'),
    (153, N'Kab. Padang Lawas utara', N'Sumatera Utara', N'Sumatera'),
    (154, N'Kab. Padang Lawas', N'Sumatera Utara', N'Sumatera'),
    (155, N'Kab. Labuhan Batu Utara', N'Sumatera Utara', N'Sumatera'),
    (156, N'Kab. Labuhan Batu Selatan', N'Sumatera Utara', N'Sumatera'),
    (157, N'Kab. Nias Barat', N'Sumatera Utara', N'Sumatera'),
    (158, N'Kab. Nias Utara', N'Sumatera Utara', N'Sumatera'),
    (159, N'Kota Medan', N'Sumatera Utara', N'Sumatera'),
    (160, N'Kota Binjai', N'Sumatera Utara', N'Sumatera'),
    (161, N'Kota Tebing Tinggi', N'Sumatera Utara', N'Sumatera'),
    (162, N'Kota Pematang Siantar', N'Sumatera Utara', N'Sumatera'),
    (163, N'Kota Tanjung Balai', N'Sumatera Utara', N'Sumatera'),
    (164, N'Kota Sibolga', N'Sumatera Utara', N'Sumatera'),
    (165, N'Kota Padang Sidempuan', N'Sumatera Utara', N'Sumatera'),
    (166, N'Kota Gunung Sitoli', N'Sumatera Utara', N'Sumatera'),
    (167, N'Kab. Agam', N'Sumatera Barat', N'Sumatera'),
    (168, N'Kab. Pasaman', N'Sumatera Barat', N'Sumatera'),
    (169, N'Kab. Lima Puluh Koto', N'Sumatera Barat', N'Sumatera'),
    (170, N'Kab. Solok', N'Sumatera Barat', N'Sumatera'),
    (171, N'Kab. Padang Pariaman', N'Sumatera Barat', N'Sumatera'),
    (172, N'Kab. Pesisir Selatan', N'Sumatera Barat', N'Sumatera'),
    (173, N'Kab. Tanah Datar', N'Sumatera Barat', N'Sumatera'),
    (174, N'Kab. Sawahlunto/ Sijunjung', N'Sumatera Barat', N'Sumatera'),
    (175, N'Kab. Kepulauan Mentawai', N'Sumatera Barat', N'Sumatera'),
    (176, N'Kab. Solok Selatan', N'Sumatera Barat', N'Sumatera'),
    (177, N'Kab. Dharmas Raya', N'Sumatera Barat', N'Sumatera'),
    (178, N'Kab. Pasaman Barat', N'Sumatera Barat', N'Sumatera'),
    (179, N'Kota Bukittinggi', N'Sumatera Barat', N'Sumatera'),
    (180, N'Kota Padang', N'Sumatera Barat', N'Sumatera'),
    (181, N'Kota Padang Panjang', N'Sumatera Barat', N'Sumatera'),
    (182, N'Kota Sawah Lunto', N'Sumatera Barat', N'Sumatera'),
    (183, N'Kota Solok', N'Sumatera Barat', N'Sumatera'),
    (184, N'Kota Payakumbuh', N'Sumatera Barat', N'Sumatera'),
    (185, N'Kota Pariaman', N'Sumatera Barat', N'Sumatera'),
    (186, N'Kab. Kampar', N'Riau', N'Sumatera'),
    (187, N'Kab. Bengkalis', N'Riau', N'Sumatera'),
    (188, N'Kab. Indragiri Hulu', N'Riau', N'Sumatera'),
    (189, N'Kab. Indragiri Hilir', N'Riau', N'Sumatera'),
    (190, N'Kab. Pelalawan', N'Riau', N'Sumatera'),
    (191, N'Kab. Rokan Hilir', N'Riau', N'Sumatera'),
    (192, N'Kab. Siak', N'Riau', N'Sumatera'),
    (193, N'Kab. Kuantan Singingi', N'Riau', N'Sumatera'),
    (194, N'Kab. Rokan Hulu', N'Riau', N'Sumatera'),
    (195, N'Kab. Kepulauan Meranti', N'Riau', N'Sumatera'),
    (196, N'Kota Pekanbaru', N'Riau', N'Sumatera'),
    (197, N'Kota Dumai', N'Riau', N'Sumatera'),
    (198, N'Kab. Batang Hari', N'Jambi', N'Sumatera'),
    (199, N'Kab. Bungo', N'Jambi', N'Sumatera'),
    (200, N'Kab. Sarolangun', N'Jambi', N'Sumatera'),
    (201, N'Kab. Tanjung Jabung Barat', N'Jambi', N'Sumatera'),
    (202, N'Kab. Kerinci', N'Jambi', N'Sumatera'),
    (203, N'Kab. Tebo', N'Jambi', N'Sumatera'),
    (204, N'Kab. Muaro Jambi', N'Jambi', N'Sumatera'),
    (205, N'Kab. Tanjung Jabung Timur', N'Jambi', N'Sumatera'),
    (206, N'Kab. Merangin', N'Jambi', N'Sumatera'),
    (207, N'Kota Jambi', N'Jambi', N'Sumatera'),
    (208, N'Kab. Sungai Penuh', N'Jambi', N'Sumatera'),
    (209, N'Kab. Musi Banyu Asin', N'Sumatera Selatan', N'Sumatera'),
    (210, N'Kab. Ogan Komering Ilir', N'Sumatera Selatan', N'Sumatera'),
    (211, N'Kab. Ogan Komering Ulu', N'Sumatera Selatan', N'Sumatera'),
    (212, N'Kab. Muara Enim', N'Sumatera Selatan', N'Sumatera'),
    (213, N'Kab. Lahat', N'Sumatera Selatan', N'Sumatera'),
    (214, N'Kab. Musi Rawas', N'Sumatera Selatan', N'Sumatera'),
    (215, N'Kab. Banyuasin', N'Sumatera Selatan', N'Sumatera'),
    (216, N'Kab. Ogan Komering Ulu Timur', N'Sumatera Selatan', N'Sumatera'),
    (217, N'Kab. Ogan Komering Ulu Selatan', N'Sumatera Selatan', N'Sumatera'),
    (218, N'Kab. Ogan Ilir', N'Sumatera Selatan', N'Sumatera'),
    (219, N'Kab. Empat Lawang', N'Sumatera Selatan', N'Sumatera'),
    (220, N'Kota Palembang', N'Sumatera Selatan', N'Sumatera'),
    (221, N'Kota Prabumulih', N'Sumatera Selatan', N'Sumatera'),
    (222, N'Kota Lubuk Linggau', N'Sumatera Selatan', N'Sumatera'),
    (223, N'Kota Pagar Alam', N'Sumatera Selatan', N'Sumatera'),
    (224, N'Kab. Lampung Selatan', N'Lampung', N'Sumatera'),
    (225, N'Kab. Lampung Tengah', N'Lampung', N'Sumatera'),
    (226, N'Kab. Lampung Utara', N'Lampung', N'Sumatera'),
    (227, N'Kab. Lampung Barat', N'Lampung', N'Sumatera'),
    (228, N'Kab. Tulang Bawang', N'Lampung', N'Sumatera'),
    (229, N'Kab. Tenggamus', N'Lampung', N'Sumatera'),
    (230, N'Kab. Lampung Timur', N'Lampung', N'Sumatera'),
    (231, N'Kab. Way Kanan', N'Lampung', N'Sumatera'),
    (232, N'Kab. Pasawaran', N'Lampung', N'Sumatera'),
    (233, N'Kab. Tulang Bawang Barat', N'Lampung', N'Sumatera'),
    (234, N'Kab. Mesuji', N'Lampung', N'Sumatera'),
    (235, N'Kab. Pringsewu', N'Lampung', N'Sumatera'),
    (236, N'Kota Bandar Lampung', N'Lampung', N'Sumatera'),
    (237, N'Kota Metro', N'Lampung', N'Sumatera'),
    (238, N'Kab. Sambas', N'Kalimantan Barat', N'Kalimantan'),
    (239, N'Kab. Pontianak', N'Kalimantan Barat', N'Kalimantan'),
    (240, N'Kab. Sanggau', N'Kalimantan Barat', N'Kalimantan'),
    (241, N'Kab. Sintang', N'Kalimantan Barat', N'Kalimantan'),
    (242, N'Kab. Kapuas Hulu', N'Kalimantan Barat', N'Kalimantan'),
    (243, N'Kab. Ketapang', N'Kalimantan Barat', N'Kalimantan'),
    (244, N'Kab. Bengkayang', N'Kalimantan Barat', N'Kalimantan'),
    (245, N'Kab. Landak', N'Kalimantan Barat', N'Kalimantan'),
    (246, N'Kab. Sekadau', N'Kalimantan Barat', N'Kalimantan'),
    (247, N'Kab. Melawi', N'Kalimantan Barat', N'Kalimantan'),
    (248, N'Kab. Kayong Utara', N'Kalimantan Barat', N'Kalimantan'),
    (249, N'Kab. Kuburaya', N'Kalimantan Barat', N'Kalimantan'),
    (250, N'Kota Pontianak', N'Kalimantan Barat', N'Kalimantan'),
    (251, N'Kota Singkawang', N'Kalimantan Barat', N'Kalimantan'),
    (252, N'Kab. Kapuas', N'Kalimantan Tengah', N'Kalimantan'),
    (253, N'Kab. Barito Selatan', N'Kalimantan Tengah', N'Kalimantan'),
    (254, N'Kab. Barito Utara', N'Kalimantan Tengah', N'Kalimantan'),
    (255, N'Kab. Kotawaringin Timur', N'Kalimantan Tengah', N'Kalimantan'),
    (256, N'Kab. Kotawaringin Barat', N'Kalimantan Tengah', N'Kalimantan'),
    (257, N'Kab. Katingan', N'Kalimantan Tengah', N'Kalimantan'),
    (258, N'Kab. Seruyan', N'Kalimantan Tengah', N'Kalimantan'),
    (259, N'Kab. Sukamara', N'Kalimantan Tengah', N'Kalimantan'),
    (260, N'Kab. Lamandau', N'Kalimantan Tengah', N'Kalimantan'),
    (261, N'Kab. Gunung Mas', N'Kalimantan Tengah', N'Kalimantan'),
    (262, N'Kab. Pulang Pisau', N'Kalimantan Tengah', N'Kalimantan'),
    (263, N'Kab. Murung Raya', N'Kalimantan Tengah', N'Kalimantan'),
    (264, N'Kab. Barito Timur', N'Kalimantan Tengah', N'Kalimantan'),
    (265, N'Kota Palangka Raya', N'Kalimantan Tengah', N'Kalimantan'),
    (266, N'Kab. Banjar', N'Kalimantan Selatan', N'Kalimantan'),
    (267, N'Kab. Tanah Laut', N'Kalimantan Selatan', N'Kalimantan'),
    (268, N'Kab. Barito Kuala', N'Kalimantan Selatan', N'Kalimantan'),
    (269, N'Kab. Tapin', N'Kalimantan Selatan', N'Kalimantan'),
    (270, N'Kab. Hulu Sungai Selatan', N'Kalimantan Selatan', N'Kalimantan'),
    (271, N'Kab. Hulu Sungai Tengah', N'Kalimantan Selatan', N'Kalimantan'),
    (272, N'Kab. Hulu Sungai Utara', N'Kalimantan Selatan', N'Kalimantan'),
    (273, N'Kab. Tabalong', N'Kalimantan Selatan', N'Kalimantan'),
    (274, N'Kab. Kota Baru', N'Kalimantan Selatan', N'Kalimantan'),
    (275, N'Kab. Balangan', N'Kalimantan Selatan', N'Kalimantan'),
    (276, N'Kab. Tanah Bumbu', N'Kalimantan Selatan', N'Kalimantan'),
    (277, N'Kota Banjarmasin', N'Kalimantan Selatan', N'Kalimantan'),
    (278, N'Kota Banjarbaru', N'Kalimantan Selatan', N'Kalimantan'),
    (279, N'Kab. Pasir', N'Kalimantan Timur', N'Kalimantan'),
    (280, N'Kab. Kutai Kartanegara', N'Kalimantan Timur', N'Kalimantan'),
    (281, N'Kab. Berau', N'Kalimantan Timur', N'Kalimantan'),
    (282, N'Kab. Bulongan', N'Kalimantan Timur', N'Kalimantan'),
    (283, N'Kab. Kutai Barat', N'Kalimantan Timur', N'Kalimantan'),
    (284, N'Kab. Kutai Timur', N'Kalimantan Timur', N'Kalimantan'),
    (285, N'Kab. Penajam Paser Utara', N'Kalimantan Timur', N'Kalimantan'),
    (286, N'Kota Samarinda', N'Kalimantan Timur', N'Kalimantan'),
    (287, N'Kota Balikpapan', N'Kalimantan Timur', N'Kalimantan'),
    (288, N'Kota Bontang', N'Kalimantan Timur', N'Kalimantan'),
    (289, N'Kab. Bolaang Mongondaw', N'Sulawesi Utara', N'Sulawesi'),
    (290, N'Kab. Minahasa', N'Sulawesi Utara', N'Sulawesi'),
    (291, N'Kab. Kep. Sangihe', N'Sulawesi Utara', N'Sulawesi'),
    (292, N'Kab. Kepulauan Talaud', N'Sulawesi Utara', N'Sulawesi'),
    (293, N'Kab. Minahasa Selatan', N'Sulawesi Utara', N'Sulawesi'),
    (294, N'Kab. Minahasa Utara', N'Sulawesi Utara', N'Sulawesi'),
    (295, N'Kab. Bolaang Mongondow Utara', N'Sulawesi Utara', N'Sulawesi'),
    (296, N'Kab. Kepulauan Sitaro', N'Sulawesi Utara', N'Sulawesi'),
    (297, N'Kab. Minahasa Tenggara', N'Sulawesi Utara', N'Sulawesi'),
    (298, N'Kab. Bolaang Mongondaw Timur', N'Sulawesi Utara', N'Sulawesi'),
    (299, N'Kab. Bolaang Mongondaw Selatan', N'Sulawesi Utara', N'Sulawesi'),
    (300, N'Kota Manado', N'Sulawesi Utara', N'Sulawesi'),
    (301, N'Kota Bitung', N'Sulawesi Utara', N'Sulawesi'),
    (302, N'Kota Tomohon', N'Sulawesi Utara', N'Sulawesi'),
    (303, N'Kota. Kotamobagu', N'Sulawesi Utara', N'Sulawesi'),
    (304, N'Kab. Banggai Kepulauan', N'Sulawesi Tengah', N'Sulawesi'),
    (305, N'Kab. Donggala', N'Sulawesi Tengah', N'Sulawesi'),
    (306, N'Kab. Parigi Mautong', N'Sulawesi Tengah', N'Sulawesi'),
    (307, N'Kab. Banggai', N'Sulawesi Tengah', N'Sulawesi'),
    (308, N'Kab. Buol', N'Sulawesi Tengah', N'Sulawesi'),
    (309, N'Kab. Toli-Toli', N'Sulawesi Tengah', N'Sulawesi'),
    (310, N'Kab. Marowali', N'Sulawesi Tengah', N'Sulawesi'),
    (311, N'Kab. Poso', N'Sulawesi Tengah', N'Sulawesi'),
    (312, N'Kab. Tojo Una-Una', N'Sulawesi Tengah', N'Sulawesi'),
    (313, N'Kab. Sigi', N'Sulawesi Tengah', N'Sulawesi'),
    (314, N'Kota Palu', N'Sulawesi Tengah', N'Sulawesi'),
    (315, N'Kab. Maros', N'Sulawesi Selatan', N'Sulawesi'),
    (316, N'Kab. Pangkajene Kepulauan', N'Sulawesi Selatan', N'Sulawesi'),
    (317, N'Kab. Gowa', N'Sulawesi Selatan', N'Sulawesi'),
    (318, N'Kab. Takalar', N'Sulawesi Selatan', N'Sulawesi'),
    (319, N'Kab. Jeneponto', N'Sulawesi Selatan', N'Sulawesi'),
    (320, N'Kab. Barru', N'Sulawesi Selatan', N'Sulawesi'),
    (321, N'Kab. Bone', N'Sulawesi Selatan', N'Sulawesi'),
    (322, N'Kab. Wajo', N'Sulawesi Selatan', N'Sulawesi'),
    (323, N'Kab. Soppeng', N'Sulawesi Selatan', N'Sulawesi'),
    (324, N'Kab. Bantaeng', N'Sulawesi Selatan', N'Sulawesi'),
    (325, N'Kab. Bulukumba', N'Sulawesi Selatan', N'Sulawesi'),
    (326, N'Kab. Sinjai', N'Sulawesi Selatan', N'Sulawesi'),
    (327, N'Kab. Selayar', N'Sulawesi Selatan', N'Sulawesi'),
    (328, N'Kab. Pinrang', N'Sulawesi Selatan', N'Sulawesi'),
    (329, N'Kab. Sidenreng Rappang', N'Sulawesi Selatan', N'Sulawesi'),
    (330, N'Kab. Enrekang', N'Sulawesi Selatan', N'Sulawesi'),
    (331, N'Kab. Luwu', N'Sulawesi Selatan', N'Sulawesi'),
    (332, N'Kab. Tana Toraja', N'Sulawesi Selatan', N'Sulawesi'),
    (333, N'Kab. Luwu Utara', N'Sulawesi Selatan', N'Sulawesi'),
    (334, N'Kab. Luwu Timur', N'Sulawesi Selatan', N'Sulawesi'),
    (335, N'Kab. Toraja Utara', N'Sulawesi Selatan', N'Sulawesi'),
    (336, N'Kota Makassar', N'Sulawesi Selatan', N'Sulawesi'),
    (337, N'Kota Pare-Pare', N'Sulawesi Selatan', N'Sulawesi'),
    (338, N'Kota Palopo', N'Sulawesi Selatan', N'Sulawesi'),
    (339, N'Kab. Konawe', N'Sulawesi Tenggara', N'Sulawesi'),
    (340, N'Kab. Muna', N'Sulawesi Tenggara', N'Sulawesi'),
    (341, N'Kab. Buton', N'Sulawesi Tenggara', N'Sulawesi'),
    (342, N'Kab. Kolaka', N'Sulawesi Tenggara', N'Sulawesi'),
    (343, N'Kab. Konawe Selatan', N'Sulawesi Tenggara', N'Sulawesi'),
    (344, N'Kab. Wakatobi', N'Sulawesi Tenggara', N'Sulawesi'),
    (345, N'Kab. Bombana', N'Sulawesi Tenggara', N'Sulawesi'),
    (346, N'Kab. Kolaka Utara', N'Sulawesi Tenggara', N'Sulawesi'),
    (347, N'Kab. Konawe Utara', N'Sulawesi Tenggara', N'Sulawesi'),
    (348, N'Kab. Buton Utara', N'Sulawesi Tenggara', N'Sulawesi'),
    (349, N'Kota Kendari', N'Sulawesi Tenggara', N'Sulawesi'),
    (350, N'Kota Baubau', N'Sulawesi Tenggara', N'Sulawesi'),
    (351, N'Kab. Maluku Tengah', N'Maluku', N'Kepulauan Maluku'),
    (352, N'Kab. Maluku Tenggara', N'Maluku', N'Kepulauan Maluku'),
    (353, N'Kab. Buru', N'Maluku', N'Kepulauan Maluku'),
    (354, N'Kab. Maluku Tenggara Barat', N'Maluku', N'Kepulauan Maluku'),
    (355, N'Kab. Seram Bagian Barat', N'Maluku', N'Kepulauan Maluku'),
    (356, N'Kab. Seram Bagian Timur', N'Maluku', N'Kepulauan Maluku'),
    (357, N'Kab. Kepulauan Aru', N'Maluku', N'Kepulauan Maluku'),
    (358, N'Kab. Maluku Barat Daya', N'Maluku', N'Kepulauan Maluku'),
    (359, N'Kab. Buru Selatan', N'Maluku', N'Kepulauan Maluku'),
    (360, N'Kota Ambon', N'Maluku', N'Kepulauan Maluku'),
    (361, N'Kota. Tual', N'Maluku', N'Kepulauan Maluku'),
    (362, N'Kab. Buleleng', N'Bali', N'Kepulauan Sunda Kecil'),
    (363, N'Kab. Jembrana', N'Bali', N'Kepulauan Sunda Kecil');
INSERT INTO WILAYAH
VALUES
    (364, N'Kab. Tabanan', N'Bali', N'Kepulauan Sunda Kecil'),
    (365, N'Kab. Badung', N'Bali', N'Kepulauan Sunda Kecil'),
    (366, N'Kab. Gianyar', N'Bali', N'Kepulauan Sunda Kecil'),
    (367, N'Kab. Klungkung', N'Bali', N'Kepulauan Sunda Kecil'),
    (368, N'Kab. Bangli', N'Bali', N'Kepulauan Sunda Kecil'),
    (369, N'Kab. Karang Asem', N'Bali', N'Kepulauan Sunda Kecil'),
    (370, N'Kota Denpasar', N'Bali', N'Kepulauan Sunda Kecil'),
    (371, N'Kab. Lombok Barat', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (372, N'Kab. Lombok Tengah', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (373, N'Kab. Lombok Timur', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (374, N'Kab. Sumbawa', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (375, N'Kab. Dompu', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (376, N'Kab. Bima', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (377, N'Kab. Sumbawa Barat', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (378, N'Kab. Lombok Utara', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (379, N'Kota Mataram', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (380, N'Kota Bima', N'Nusa Tenggara Barat', N'Kepulauan Sunda Kecil'),
    (381, N'Kab. Kupang', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (382, N'Kab. Timor Tengah Selatan', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (383, N'Kab. Timor Tengah Utara', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (384, N'Kab. Belu', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (385, N'Kab. Alor', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (386, N'Kab. Flores Timur', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (387, N'Kab. Sikka', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (388, N'Kab. Ende', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (389, N'Kab. Ngada', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (390, N'Kab. Manggarai', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (391, N'Kab. Sumba Timur', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (392, N'Kab. Sumba Barat', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (393, N'Kab. Lembata', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (394, N'Kab. Rote-Ndao', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (395, N'Kab. Manggarai Barat', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (396, N'Kab. Nagakeo', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (397, N'Kab. Sumba Tengah', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (398, N'Kab. Sumba Barat Daya', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (399, N'Kab. Manggarai Timur', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (400, N'Kota Kupang', N'Nusa Tenggara Timur', N'Kepulauan Sunda Kecil'),
    (401, N'Kab. Jayapura', N'Papua', N'Papua'),
    (402, N'Kab. Biak Numfor', N'Papua', N'Papua'),
    (403, N'Kab. Yapen Waropen', N'Papua', N'Papua'),
    (404, N'Kab. Merauke', N'Papua', N'Papua'),
    (405, N'Kab. Jayawijaya', N'Papua', N'Papua'),
    (406, N'Kab. Nabire', N'Papua', N'Papua'),
    (407, N'Kab. Paniai', N'Papua', N'Papua'),
    (408, N'Kab. Puncak Jaya', N'Papua', N'Papua'),
    (409, N'Kab. Mimika', N'Papua', N'Papua'),
    (410, N'Kab. Boven Digoel', N'Papua', N'Papua'),
    (411, N'Kab. Mappi', N'Papua', N'Papua'),
    (412, N'Kab. Asmat', N'Papua', N'Papua'),
    (413, N'Kab. Yahukimo', N'Papua', N'Papua'),
    (414, N'Kab. Pegunungan Bintang', N'Papua', N'Papua'),
    (415, N'Kab. Tolikara', N'Papua', N'Papua'),
    (416, N'Kab. Sarmi', N'Papua', N'Papua'),
    (417, N'Kab. Keerom', N'Papua', N'Papua'),
    (418, N'Kab. Waropen', N'Papua', N'Papua'),
    (419, N'Kab. Supiori', N'Papua', N'Papua'),
    (420, N'Kab. Memberamo Raya', N'Papua', N'Papua'),
    (421, N'Kab. Nduga', N'Papua', N'Papua'),
    (422, N'Kab. Lanny Jaya', N'Papua', N'Papua'),
    (423, N'Kab. Membramo Tengah', N'Papua', N'Papua'),
    (424, N'Kab. Yalimo', N'Papua', N'Papua'),
    (425, N'kab. Puncak', N'Papua', N'Papua'),
    (426, N'Kab. Dogiyai', N'Papua', N'Papua'),
    (427, N'Kab. Deiyai', N'Papua', N'Papua'),
    (428, N'Kab. Intan Jaya', N'Papua', N'Papua'),
    (429, N'Kota Jayapura', N'Papua', N'Papua'),
    (430, N'Kab. Bengkulu Utara', N'Bengkulu', N'Sumatera'),
    (431, N'Kab. Rejang Lebong', N'Bengkulu', N'Sumatera'),
    (432, N'Kab. Bengkulu Selatan', N'Bengkulu', N'Sumatera'),
    (433, N'Kab. Muko-muko', N'Bengkulu', N'Sumatera'),
    (434, N'Kab. Kepahiang', N'Bengkulu', N'Sumatera'),
    (435, N'Kab. Lebong', N'Bengkulu', N'Sumatera'),
    (436, N'Kab. Kaur', N'Bengkulu', N'Sumatera'),
    (437, N'Kab. Seluma', N'Bengkulu', N'Sumatera'),
    (438, N'Kab. Bengkulu Tengah', N'Bengkulu', N'Sumatera'),
    (439, N'Kota Bengkulu', N'Bengkulu', N'Sumatera'),
    (440, N'Kab. Halmahera Tengah', N'Maluku Utara', N'Kepulauan Maluku'),
    (441, N'Kab. Halmahera Barat', N'Maluku Utara', N'Kepulauan Maluku'),
    (442, N'Kab. halmahera Utara', N'Maluku Utara', N'Kepulauan Maluku'),
    (443, N'Kab. Halmahera Selatan', N'Maluku Utara', N'Kepulauan Maluku'),
    (444, N'Kab. Halmahera Timur', N'Maluku Utara', N'Kepulauan Maluku'),
    (445, N'Kab. Kepulauan Sula', N'Maluku Utara', N'Kepulauan Maluku'),
    (446, N'Kab. Kepulauan Morotai', N'Maluku Utara', N'Kepulauan Maluku'),
    (447, N'Kota Ternate', N'Maluku Utara', N'Kepulauan Maluku'),
    (448, N'Kota Tidore Kepulauan', N'Maluku Utara', N'Kepulauan Maluku'),
    (449, N'Kab. Pandeglang', N'Banten', N'Jawa'),
    (450, N'Kab. Lebak', N'Banten', N'Jawa'),
    (451, N'Kab. Tangerang', N'Banten', N'Jawa'),
    (452, N'Kab. Serang', N'Banten', N'Jawa'),
    (453, N'Kota Cilegon', N'Banten', N'Jawa'),
    (454, N'Kota Tangerang', N'Banten', N'Jawa'),
    (455, N'Kota Serang', N'Banten', N'Jawa'),
    (456, N'Kota tangerang Selatan', N'Banten', N'Jawa'),
    (457, N'Kab. Bangka', N'Bangka Belitung', N'Sumatera'),
    (458, N'Kab. Belitung', N'Bangka Belitung', N'Sumatera'),
    (459, N'Kab. Bangka Tengah', N'Bangka Belitung', N'Sumatera'),
    (460, N'Kab. Bangka Barat', N'Bangka Belitung', N'Sumatera'),
    (461, N'Kab. Bangka Selatan', N'Bangka Belitung', N'Sumatera'),
    (462, N'Kab. Belitung Timur', N'Bangka Belitung', N'Sumatera'),
    (463, N'Kota Pangkalpinang', N'Bangka Belitung', N'Sumatera'),
    (464, N'Kab. Boalemo', N'Gorontalo', N'Sulawesi'),
    (465, N'Kab. Gorontalo', N'Gorontalo', N'Sulawesi'),
    (466, N'Kab. Pohuwato', N'Gorontalo', N'Sulawesi'),
    (467, N'Kab. Bone Bolango', N'Gorontalo', N'Sulawesi'),
    (468, N'Kab. Gorontalo Utara', N'Gorontalo', N'Sulawesi'),
    (469, N'Kota Gorontalo', N'Gorontalo', N'Sulawesi'),
    (470, N'Kab. Bintan', N'Kepulauan Riau', N'Sumatera'),
    (471, N'Kab. Karimun', N'Kepulauan Riau', N'Sumatera'),
    (472, N'Kab. Natuna', N'Kepulauan Riau', N'Sumatera'),
    (473, N'Kab. Lingga', N'Kepulauan Riau', N'Sumatera'),
    (474, N'Kab. Kepulauan Anambas', N'Kepulauan Riau', N'Sumatera'),
    (475, N'Kota Batam', N'Kepulauan Riau', N'Sumatera'),
    (476, N'Kota Tanjungpinang', N'Kepulauan Riau', N'Sumatera'),
    (477, N'Kab. Fak-Fak', N'Papua Barat', N'Papua'),
    (478, N'Kab. Kaimana', N'Papua Barat', N'Papua'),
    (479, N'Kab. Teluk Wondama', N'Papua Barat', N'Papua'),
    (480, N'Kab. Teluk Bintuni', N'Papua Barat', N'Papua'),
    (481, N'Kab. Manokwari', N'Papua Barat', N'Papua'),
    (482, N'Kab. Sorong Selatan', N'Papua Barat', N'Papua'),
    (483, N'Kab. Sorong', N'Papua Barat', N'Papua'),
    (484, N'Kab. Raja Ampat', N'Papua Barat', N'Papua'),
    (485, N'Kab. Tambrauw', N'Papua Barat', N'Papua'),
    (486, N'Kab. Maybrat', N'Papua Barat', N'Papua'),
    (487, N'Kota Sorong', N'Papua Barat', N'Papua'),
    (488, N'Kab. Mamuju', N'Sulawesi Barat', N'Sulawesi'),
    (489, N'Kab. Mamuju Utara', N'Sulawesi Barat', N'Sulawesi'),
    (490, N'Kab. Polewali Mamasa', N'Sulawesi Barat', N'Sulawesi'),
    (491, N'Kab. Mamasa', N'Sulawesi Barat', N'Sulawesi'),
    (492, N'Kab. Majene', N'Sulawesi Barat', N'Sulawesi');
