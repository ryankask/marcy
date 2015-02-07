var React = require('react');

class Header extends React.Component {
  render() {
    return (
      <header>
        <h1>RyanKaskel.com</h1>
        <nav>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </nav>
      </header>
    )
  }
}

module.exports = Header;
