# TODO: Figure out where to put these
App.ApplicationAdapter = DS.ActiveModelAdapter.extend()
App.ApplicationSerializer = DS.ActiveModelSerializer.extend()

attr = DS.attr

App.Checkpoint = DS.Model.extend
  section: DS.belongsTo('section')
  lesson: DS.belongsTo('lesson')

  title: attr()
  body: attr()
  isCompleted: attr()
