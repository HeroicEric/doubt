attr = DS.attr

App.CheckpointCompletion = DS.Model.extend
  checkpoint: DS.belongsTo('checkpoint')
  # user: DS.belongsTo('user')
