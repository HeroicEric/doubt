App.CheckpointController = Ember.ObjectController.extend
  actions:
    markComplete: ->
      # TODO: Remove explicit reference to user 1
      userCompletion = @store.createRecord( 'checkpointCompletion',
        checkpoint: @get('model'), userId: 1)
      userCompletion.save()

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

