var path = require('path');

function staticPath() {
  var baseParts = [__dirname, 'priv', 'static'];
  var parts = baseParts.concat(Array.prototype.slice.call(arguments));
  return path.join.apply(null, parts);
}

module.exports = {
  context: staticPath(),
  entry: './app/index.jsx',
  output: {
    path: staticPath('dist'),
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        test: /\.scss$/,
        loader: 'style!css!sass'
      },
      {
        test: /\.jsx$/,
        loader: 'jsx?harmony'
      }
    ]
  },
  resolve: {
    extensions: ['', '.webpack.js', '.web.js', '.js', '.jsx']
  }
};
