attr = DS.attr

App.Checkpoint = DS.Model.extend
  section: DS.belongsTo('section')
  lesson: DS.belongsTo('lesson')
  checkpointCompletions: DS.hasMany('checkpointCompletion', async: true)

  title: attr()
  body: attr()
