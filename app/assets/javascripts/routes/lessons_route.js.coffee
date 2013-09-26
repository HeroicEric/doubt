App.LessonsRoute = Ember.Route.extend
  model: ->
    @get("store").find "lesson"
