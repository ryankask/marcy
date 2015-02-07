var React = require('react');
var Header = require('./Header');
var Footer = require('./Footer');

class App extends React.Component {
  render() {
    return (
      <div className="app-container">
        <Header/>
        <div className="content">
          <strong>Welcome</strong>
        </div>
        <Footer/>
      </div>
    );
  }
}

module.exports = App;
