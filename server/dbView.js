const { Pool } = require('pg');
const dotenv = require('dotenv');
dotenv.config();

const pool = new Pool({
  host: process.env.POSTGRES_HOST,
  port: process.env.POSTGRES_PORT,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
  ssl: {
    rejectUnauthorized: false,
  },
});

const getView = async (idView) => {
  try {
    const result = await pool.query(`SELECT * FROM VIEW${idView}`);
    return result.rows;
  } catch (err) {
    console.log(err);
  }
};

module.exports = { getView };
