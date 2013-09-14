module "User views a Lesson",
  setup: ->
    App.Lesson.FIXTURES = [
      id: 1
      title: "Intro to Ruby"
      description: "I love Ruby and so should you"
    ]

    Ember.run App, App.advanceReadiness

  teardown: ->
    App.reset()

test "Lesson information is shown", ->
  expect 2

  visit("/lessons/1").then ->
    ok hasContent("Intro to Ruby"), "Title found"
    ok hasContent("I love Ruby and so should you"),
      "Description found"
