module "User edits a Lesson",
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

test "Lesson description is edited", ->
  expect 1

  visit("/lessons/1").then(->
    click 'h1 button.btn-edit'
  ).then(->
    fillIn '.form-control-lesson-description', '### An awesome new description'
  ).then(->
    click 'h1 button.btn-save'
  ).then(->
    ok find("h3:contains('An awesome new description')").length,
      "The the new description should display"
  )

test "Section description is edited", ->
  expect 1

  visit("/lessons/1").then(->
    click 'h2 button.btn-edit'
  ).then(->
    fillIn '.form-control-section-description', '### An awesome new description'
  ).then(->
    click 'h2 button.btn-save'
  ).then(->
    ok find("h3:contains('An awesome new description')").length,
      "The the new description should display"
  )

test "Checkpoint description is edited", ->
  expect 1

  visit("/lessons/1").then(->
    click 'h3 button.btn-edit'
  ).then(->
    fillIn '.form-control-checkpoint-body', '### An awesome new body'
  ).then(->
    click 'h3 button.btn-save'
  ).then(->
    ok find("h3:contains('An awesome new body')").length,
      "The the new description body display"
  )
