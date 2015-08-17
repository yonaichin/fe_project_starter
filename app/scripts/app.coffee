React = require 'react/addons'
Router = require 'react-router'
DefaultRoute = Router.DefaultRoute
Link = Router.Link
Route = Router.Route
RouteHandler = Router.RouteHandler
NotFoundRoute = Router.NotFoundRoute
Index = require './index'
Admission = require './admission'
Navbar = require './components/navbar'
Main = React.createClass
  displayName:'Main'
  render:->
    <div>
      <Navbar />
      <RouteHandler />
    </div>
routes =
  <Route name="index" path="/" handler={Main}>
    <Route name="admission" handler={Admission}/>
    <DefaultRoute handler={Index}/>
  </Route>
module.exports =
  Router.run routes,(Handler)->
    React.render <Handler />, document.querySelector '#app'
