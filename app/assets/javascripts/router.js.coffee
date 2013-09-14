# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'lessons', path: '/'

App.Router.reopen location: "history"
