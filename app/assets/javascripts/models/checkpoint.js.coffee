attr = DS.attr

App.Checkpoint = DS.Model.extend
  section: DS.belongsTo('section')
  lesson: DS.belongsTo('lesson')
  checkpointCompletions: DS.hasMany('checkpointCompletion')

  title: attr()
  body: attr()
