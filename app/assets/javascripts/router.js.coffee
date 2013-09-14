# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'lessons', path: '/'
  @resource 'lesson', path: '/lessons/:lesson_id'

App.Router.reopen location: "history"
