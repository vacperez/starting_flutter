const { Pool } = require('pg')


//const posgresUrl = `postgresql://postgres:abcd.1234@localhost:5432/postgres`
const posgresUrl = `postgresql://postgres:yE0yiJznBviLM18q@35.237.49.126:5432/postgres`
const pool = new Pool({ connectionString: posgresUrl })
module.exports = pool











// const Pool = require("pg").Pool;
// const pool = new Pool({
//   user: "postgres",
//   host: "35.237.49.126",
//   database: "postgres",
//   password: "yE0yiJznBviLM18q",
//   port: 5432
// });

// const getProperties = (require, response) => {
//   pool.query("SELECT * FROM yoarriendo.property ORDER BY uuid_property ASC"),
//     (error, results) => {
//       if (error) {
//         throw error;
//       }
//       response.status(200).json(results.rows);
//     };
// };
// module.exports = {
//   getProperties
// };
