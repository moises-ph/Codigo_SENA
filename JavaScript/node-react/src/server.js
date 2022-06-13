import Express  from "express";
import webpack from "webpack";
import webpackDevMiddleware from "webpack-dev-middleware";
import webpackConfig from "../webpack.config";

//Initialize packages
const app = Express();

// middleware for webpack

app.use(webpackDevMiddleware(webpack(webpackConfig)));


// settings
app.set('port', process.env.PORT || 3000);

//Routes
app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.get('/api', (req, res)=> {
    res.json({api : 'Work'});
});


//Start server
app.listen(app.get('port'), () => {
    console.log('Server on port', app.get('port'));
});