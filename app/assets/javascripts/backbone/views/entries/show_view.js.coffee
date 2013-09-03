BackboneTest.Views.Entries ||= {}

class BackboneTest.Views.Entries.ShowView extends Backbone.View
  template: JST["backbone/templates/entries/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
