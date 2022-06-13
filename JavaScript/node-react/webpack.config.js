import webpack from "webpack";
import HtmlWebpackPlugin from "html-webpack-plugin";
import LiveReloadPlugin from "webpack-livereload-plugin";

module.exports = {
    mode : "development",
    entry: "./src/client/index.js",
    output: {
        path: '/',
        filename : "bundle.js"
    },
    module: {
        rules: [
            {
                use: "babel-loader",
                test: /\.js$/,
                exclude: /node_modules/
            },
            {
                use : ['style-loader','css-loader'],
                test: /\.css$/
            }
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            template : "./src/client/index.html"
        }),
        new LiveReloadPlugin({})
    ]
}