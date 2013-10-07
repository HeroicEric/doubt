module "User views Lessons index",
  setup: ->
    preloadCurrentUser()

    App.Lesson.FIXTURES = [
      id: 1
      title: "Intro to Ruby"
    ,
      id: 2
      title: "Intro to Ember"
    ,
      id: 3
      title: "Intro to Javascripz"
    ]

    Ember.run App, App.advanceReadiness

  teardown: ->
    App.reset()

test "All of the Lessons are listed", ->
  expect 2

  visit("/lessons").then ->
    ok hasContent("Intro to Ruby"), "Can't find content"
    equal $('.lesson').length, 3
