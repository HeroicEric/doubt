App.ApplicationController = Ember.Controller.extend
  currentUser: null
  isLoggedIn: false

  login: (user) ->
    @setProperties
      currentUser: user
      isLoggedIn: true

  logout: ->
    @setProperties
      currentUser: null
      isLoggedIn: false
