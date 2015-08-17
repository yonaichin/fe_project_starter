React = require 'react/addons'
Router = require 'react-router'
Link = Router.Link
Navbar = React.createClass
  displayName:'NAVBAR'
  render:->
    <nav>
      <ul>
        <li><Link to="index">INDEX</Link></li>
        <li><Link to="admission">ADMISSION</Link></li>
      </ul>
    </nav>
module.exports = Navbar
