module "User views a Lesson",
  setup: ->
    App.Lesson.FIXTURES = [
      id: 1
      title: "Intro to Ruby"
      description: "I love Ruby and so should you"
      sections: [1, 2]
    ]

    App.Section.FIXTURES = [
      id: 1
      lesson: 1
      title: "Variables"
    ,
      id: 2
      lesson: 1
      title: "Loops"
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

test "Lesson sections are shown", ->
  expect 2

  visit("/lessons/1").then ->
    ok hasContent("Variables"), "Found first section"
    ok hasContent("Loops"), "Found second section"
