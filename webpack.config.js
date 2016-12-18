module.exports = {
   entry : ["./web/static/css/app.css", "./web/static/js/app.js"],
   
   output : {
     path : "./priv/static/js",
     filename: "app.js"
   },

   module: {
     loaders: [{
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel",
        query: {
           presets: ["es2015"]
        }
     }]
   }
}
