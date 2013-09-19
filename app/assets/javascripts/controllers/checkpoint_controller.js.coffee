App.CheckpointController = Ember.ObjectController.extend
  isCompleted: ((key, value) ->
    model = @get("model")
    if value is `undefined`
      model.get "isCompleted"
    else
      model.set "isCompleted", value
      completion = @store.createRecord('checkpointCompletion', checkpoint: model)
      completion.save()
      value
  ).property()
