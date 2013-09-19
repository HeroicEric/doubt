attr = DS.attr

App.Lesson = DS.Model.extend
  sections: DS.hasMany('section', async: true)
  checkpoints: DS.hasMany('checkpoint', async: true)

  title: attr()
  description: attr()
