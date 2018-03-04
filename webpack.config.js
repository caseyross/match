const path = require('path');
const webpack = require('webpack');

module.exports = {
  mode: 'development',
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
        exclude: /(node_modules|dist)/,
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
  plugins: [
    new webpack.ProvidePlugin(
      {
        Glamor: 'glamor/react' // for babel config
      }
    )
  ],
  devServer: {
    contentBase: './dist',
    public: '721eb570c2f4493c96a33511353a1b8e.vfs.cloud9.us-east-2.amazonaws.com' // allow access from this host
  },
};