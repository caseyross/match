const path = require('path');

module.exports = {
  entry: './app.coffee',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'), // absolute path required
    publicPath: '/'
  },
  module: {
    rules: [
      {
        test: /\.coffee$/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'babel-loader'
          },
          {
            loader: 'coffee-loader'
          }
        ]
      }
    ]
  },
  mode: 'development'
};