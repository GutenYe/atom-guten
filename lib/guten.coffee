{exec} = require('child_process')

module.exports =
  activate: (state) ->
    atom.workspaceView.command 'guten:open', => @open()

  open: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    exec ('chromium "'+filePath+'"')
