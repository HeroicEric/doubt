module "User views a Lesson",
  setup: ->
    preloadCurrentUser()

    App.Lesson.FIXTURES = [
      id: 1
      title: "Intro to Ruby"
      description: "I love Ruby and so should you"
      sections: [1, 2]
      checkpoints: [1, 2]
    ]

    App.Section.FIXTURES = [
      id: 1
      lesson: 1
      title: "A comment about comments"
      description: "I love cucumbers and so should you"
      checkpoints: [1]
    ,
      id: 2
      lesson: 1
      title: "Controlling Flow"
      description: "I love pasta and so should you"
      checkpoints: [2]
    ]

    App.Checkpoint.FIXTURES = [
      id: 1
      section: 1
      title: "Commenting in Style"
      body: "I love peanut butter and so should you"
    ,
      id: 2
      section: 2
      title: "Loops"
      body: "I love dogs and so should you"
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
    ok hasContent("A comment about comments"), "Found first section"
    ok hasContent("Controlling Flow"), "Found second section"

test "Section checkpoints are shown", ->
  expect 2

  visit("/lessons/1").then ->
    ok hasContent("Commenting in Style"), "Found first checkpoint"
    ok hasContent("Loops"), "Found second checkpoint"
