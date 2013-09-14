# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  # @resource('posts')

App.Router.reopen location: "history"
