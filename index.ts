import express from 'express'

const app = express()

app.get('/', (req, res) => {
    res.send('HELLO !')
})
app.post('/login', (req, res) => {
    res.send('HELLO !')
})
app.post('/register', (req, res) => {
    res.send('HELLO !')
})
app.put('/subscription', (req, res) => {
    res.send('HELLO !')
})
app.put('/user', (req, res) => {
    res.send('HELLO !')
})
app.delete('/user/off', (req, res) => {
    res.send('HELLO !')
})
app.post('/user/child', (req, res) => {
    res.send('HELLO !')
})
app.delete('/user/child', (req, res) => {
    res.send('HELLO !')
})
app.get('/user/child', (req, res) => {
    res.send('HELLO !')
})
app.put('/user/cart', (req, res) => {
    res.send('HELLO !')
})
app.delete('/user', (req, res) => {
    res.send('HELLO !')
})
app.get('/songs', (req, res) => {
    res.send('HELLO !')
})
app.get('/songs/{id}', (req, res) => {
    res.send('HELLO !')
})
app.get('/bills', (req, res) => {
    res.send('HELLO !')
})