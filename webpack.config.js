const path = require('path');

module.exports = {
  entry: './app.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'), // absolute path required
    publicPath: '/'
  },
  module: {
    rules: [
      {
        loader: "babel-loader",
        test: /\.js$/,
        exclude: /node_modules/
      }
    ]
  },
  devServer: {
    contentBase: './dist',
    public: '721eb570c2f4493c96a33511353a1b8e.vfs.cloud9.us-east-2.amazonaws.com' // allow access from this host
  },
};