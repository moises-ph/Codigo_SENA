const express = require('express');
const app = express();
const port = 3000;


app.use(express.static(__dirname + '/public'));

app.set('view engine', 'ejs');

app.set('views', './views');

app.get('/', (req, res) => {
    res.render('index', {titulopag: 'Pagina de inicio'});
});

app.get('/pc_completo', (req, res) => {
    res.render('pc_completo', {titulopag: 'PC completo'});
})

app.get('/perifericos', (req,res) => {
    res.render('perifericos', {titulopag: 'Perifericos'});
})

app.get('/quienes_somos', (req,res) => {
    res.render('quienes_somos', {titulopag: 'Quienes somos'});
})

app.get('/componentes', (req,res) => {
    res.render('componentes', {titulopag: 'Componentes'});
})

app.listen(port, () => {
    console.log('Server running on port ' + port);
});