class BackboneTest.Routers.EntriesRouter extends Backbone.Router
  initialize: (options) ->
    @entries = new BackboneTest.Collections.EntriesCollection()
    @entries.reset options.entries

  routes:
    "new"      : "newEntry"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newEntry: ->
    @view = new BackboneTest.Views.Entries.NewView(collection: @entries)
    $("#entries").html(@view.render().el)

  index: ->
    @view = new BackboneTest.Views.Entries.IndexView(entries: @entries)
    $("#entries").html(@view.render().el)

  show: (id) ->
    entry = @entries.get(id)

    @view = new BackboneTest.Views.Entries.ShowView(model: entry)
    $("#entries").html(@view.render().el)

  edit: (id) ->
    entry = @entries.get(id)

    @view = new BackboneTest.Views.Entries.EditView(model: entry)
    $("#entries").html(@view.render().el)
