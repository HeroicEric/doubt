App.CheckpointController = Ember.ObjectController.extend
  actions:
    markComplete: ->
      # TODO: Remove explicit reference to user 1
      checkpoint = @get('model')
      userCompletion = @store.createRecord( 'checkpointCompletion',
        checkpoint: checkpoint, userId: 1)
      userCompletion.save().then ->
        checkpoint.save()

    markIncomplete: ->
      completion = @get('userCompletion')
      completion.deleteRecord()
      completion.save()

  isCompleted: (->
    !!@get('userCompletion')
  ).property('checkpointCompletions.@each')

  userCompletion: (->
    # TODO: Remove explicit reference to user 1
    @get('checkpointCompletions').findBy('userId', 1)
  ).property('checkpointCompletions.@each')
