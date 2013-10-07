App.Router.map ()->
  @resource 'authenticated', path: '/', ->
    @resource 'lessons'
    @resource 'lesson', path: '/lessons/:lesson_id'

  @resource 'login'

App.Router.reopen location: "history"
