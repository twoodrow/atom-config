# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# folds Python code when a new window is opened
foldCode = (editor) ->
  #editor.foldAllAtIndentLevel(1)
  editor.foldAllAtIndentLevel(0)

atom.workspace.observeTextEditors (editor) ->
  #editor.foldAllAtIndentLevel(0) if editor?.getGrammar().name is 'Python'
  if editor.getGrammar().name is 'Python'
    foldCode(editor)
