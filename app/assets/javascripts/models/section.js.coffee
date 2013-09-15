attr = DS.attr

App.Section = DS.Model.extend(
  lesson: DS.belongsTo('lesson')

  title: attr()
  description: attr()
)
