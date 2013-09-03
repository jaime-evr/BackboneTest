class BackboneTest.Models.Entry extends Backbone.Model
  paramRoot: 'entry'

class BackboneTest.Collections.EntriesCollection extends Backbone.Collection
  model: BackboneTest.Models.Entry
  url: ''
