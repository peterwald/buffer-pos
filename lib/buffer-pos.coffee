{CompositeDisposable} = require 'atom'

module.exports =
  activate: ->
    atom.commands.add 'atom-text-editor', 'buffer-pos:get-pos': (event) ->
      editor = @getModel()
      pos = editor.getCursorBufferPosition()
      buffPos = editor.getBuffer().characterIndexForPosition(pos)
      atom.clipboard.write("#{editor.getPath()}:#{buffPos}")
      console.log("#{editor.getPath()}:#{buffPos}")
