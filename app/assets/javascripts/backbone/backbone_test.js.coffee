#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BackboneTest =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new BackboneTest.Routers.EntriesRouter()
    Backbone.history.start()

$(document).ready ->
  BackboneTest.init()