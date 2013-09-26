App.Router.map ()->
  @resource 'lessons', path: '/'
  @resource 'lesson', path: '/lessons/:lesson_id'

App.Router.reopen location: "history"
