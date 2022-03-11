
const http = require('http')

const hostname = 'ec2-3-209-230-248.compute-1.amazonaws.com'
const port = 8080

const server = http.createServer((req, res) => {
    res.statusCode = 200
    res.setHeader('Content-Type', 'text-plain')
    console.log('GET request received')
    res.end('Hello world')
})

server.listen(port, hostname, () => {
    console.log(`server running on http://${hostname}:${port}`)
})