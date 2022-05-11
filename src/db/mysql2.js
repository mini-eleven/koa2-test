const mysql = require('mysql2/promise')
const { mysqlConf } = require('../config/')

async function testMysqlConn() {
	const conn = await mysql.createConnection(mysqlConf)
	const [rows] = await conn.execute('select now();')
	return rows
}

// test
// ;(async () => {
// 	const rows = testMysqlConn()
// 	console.log(rows)
// })()

module.exports = testMysqlConn
