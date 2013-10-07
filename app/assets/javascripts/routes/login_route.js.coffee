App.LoginRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if @controllerFor('application').get('isLoggedIn')
      @transitionTo 'lessons'
