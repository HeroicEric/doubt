App.AuthenticatedRoute = Ember.Route.extend
  beforeModel: ->
    unless @controllerFor('application').get('isLoggedIn')
      @transitionTo 'login'
