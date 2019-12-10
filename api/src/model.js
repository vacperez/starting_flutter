const pool = require("./db");

module.exports = {
  getProperties: async () => {
    let properties;
    console.log(" get properties!!");
    try {
      const client = await pool.connect();
      const { rows } = await client.query(
        `SELECT * FROM yoarriendo.property ORDER BY uuid_property ASC`,
        []
      );
      client.release(true);
      properties = rows;
    } catch (error) {
      throw Error(` Error la conexión con la db`);
    }
    return properties;
  }
};
