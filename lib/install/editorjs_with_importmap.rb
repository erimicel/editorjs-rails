say "Pin Editor.js"
say %(Appending: pin "editorjs", to: "editor.js", preload: true")
append_to_file "config/importmap.rb", %(pin "editorjs", to: "editorjs.js", preload: true\n)
