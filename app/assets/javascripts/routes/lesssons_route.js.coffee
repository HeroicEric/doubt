App.LessonsRoute = Ember.Route.extend
  model: ->
    @get("store").findAll "lesson"
