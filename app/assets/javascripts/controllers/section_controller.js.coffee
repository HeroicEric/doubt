App.SectionController = Ember.ObjectController.extend
  isEditing: false
  actions:
    edit: ->
      @set 'isEditing', true
    save: ->
      @set 'isEditing', false
      @get('model').save()
