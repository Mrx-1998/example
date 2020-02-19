const Koa = require('koa')
const app = new Koa()
const config = require('./config')


const router = require('./routes')
app.use(router.routes())

app.listen(config.port, () => {
  console.log(`server is started at port ${config.port}`)
})