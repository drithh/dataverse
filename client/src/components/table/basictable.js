import MaterialTable from '@material-table/core';
import { Paper } from '@mui/material';
import { useState, useEffect } from 'react';
import * as React from 'react';
import Axios from 'axios';
import { urlLink } from '../urlLink.js';

const failedMessage = (message) => {
  return 'Query Gagal \n' + failedMessage;
};

const GetTableName = () => {
  const [tableNames, setTableNames] = useState([]);
  useEffect(() => {
    Axios.get(urlLink + 'get/table-name').then((response) => {
      setTableNames(response.data.filter((x) => !x.includes('sysdiagrams')));
    });
  }, []);
  return tableNames;
};

const BasicTable = () => {
  let tableNames = GetTableName();
  const [data, setData] = useState([]);
  const [columns, setColumns] = useState([]);
  const [tableName, setTableName] = useState('wilayah');
  useEffect(() => {
    Axios.get(`${urlLink}get/table/${tableName}`).then((response) => {
      setColumns(
        Object.keys(response.data[0]).map((key) => {
          return {
            title: key,
            field: key,
          };
        })
      );
      setData(response.data);
    });
  }, [tableName]);

  return (
    <MaterialTable
      title={
        <label className="block text-left max-w-md w-60 relative left-[-5px]">
          <select
            className="form-select block w-full mt-1 text-lg font-semibold focus:outline-none outline-none "
            value={tableName}
            onChange={(value) => setTableName(value.target.value)}
          >
            {tableNames.map((x) => (
              <option key={x} value={x} className="bg-transparent">
                {x
                  .replaceAll('_', ' ')
                  .toLowerCase()
                  .split(' ')
                  .map((s) => s.charAt(0).toUpperCase() + s.substring(1))
                  .join(' ')}
              </option>
            ))}
          </select>
        </label>
      }
      columns={columns}
      data={data}
      components={{
        Container: (props) => <Paper {...props} elevation={0} />,
      }}
      options={{
        headerStyle: {
          fontFamily: 'Source Sans Pro',
          fontWeight: 600,
        },
        rowStyle: {
          opacity: 0.7,
          fontFamily: 'Source Sans Pro',
        },
        sorting: true,
        actionsColumnIndex: -1,
        addRowPosition: 'first',
      }}
      editable={{
        onRowAdd: (newData) => {
          return new Promise((resolve, reject) => {
            setTimeout(() => {
              Axios.post(`${urlLink}post/insert/${tableName}`, newData).then(
                (response) => {
                  if (response.data === 1) {
                    setData([...data, newData]);
                    alert('Data Berhasil Ditambahkan');
                    resolve();
                  } else {
                    alert(failedMessage(response.data));
                    reject();
                  }
                }
              );
            }, 1000);
          });
        },
        onRowDelete: (oldData) => {
          return new Promise((resolve, reject) => {
            const index = oldData.tableData.id;
            setTimeout(() => {
              Axios.post(`${urlLink}post/delete/${tableName}`, oldData).then(
                (response) => {
                  if (response.data === 1) {
                    setData(data.filter((row, i) => i !== index));
                    alert('Data Berhasil Dihapus');
                    resolve();
                  } else {
                    alert(failedMessage(response.data));
                    reject();
                  }
                }
              );
            }, 1000);
          });
        },
        onRowUpdate: (newData, oldData) => {
          return new Promise((resolve, reject) => {
            setTimeout(() => {
              Axios.post(`${urlLink}post/update/${tableName}`, [
                newData,
                oldData,
              ]).then((response) => {
                if (response.data === 1) {
                  const dataUpdate = [...data];
                  const index = oldData.tableData.id;
                  dataUpdate[index] = newData;
                  setData([...dataUpdate]);
                  alert('Data Berhasil Diubah');
                  resolve();
                } else {
                  alert(failedMessage(response.data));
                  reject();
                }
              });
            }, 1000);
          });
        },
      }}
    />
  );
};

export default BasicTable;
