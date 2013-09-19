attr = DS.attr

App.Section = DS.Model.extend
  lesson: DS.belongsTo('lesson')
  checkpoints: DS.hasMany('checkpoint', async: true)

  title: attr()
  description: attr()
