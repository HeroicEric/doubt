attr = DS.attr

App.Checkpoint = DS.Model.extend
  section: DS.belongsTo('section')
  checkpointCompletions: DS.hasMany('checkpointCompletion', async: true)

  title: attr()
  body: attr()
