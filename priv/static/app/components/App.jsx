import React from 'react';
import Header from './Header';
import Footer from './Footer';

export default class App extends React.Component {
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
