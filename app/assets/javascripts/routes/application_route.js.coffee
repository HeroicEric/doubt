App.ApplicationRoute = Ember.Route.extend
  beforeModel: ->
    currentUserJson = window.preload.currentUser

    if currentUserJson
      currentUser = @get('store').push('user', currentUserJson)
      @controllerFor('application').login(currentUser)

  actions:
    logout: ->
      @controllerFor('application').logout()
      @transitionTo "login"
