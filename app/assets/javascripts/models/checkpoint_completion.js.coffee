attr = DS.attr

App.CheckpointCompletion = DS.Model.extend
  checkpoint: DS.belongsTo('checkpoint', inverse: 'checkpointCompletions')
  # TODO: This should point to a real user. Need to make User model
  userId: attr()
