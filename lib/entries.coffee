module.exports = [
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'New Ioton Project'
    callback: (ioton) ->
      @exec = require('child_process').exec
      home = process.env['HOME']
      command = home + "/.atom/packages/ioton/bin/iotonConfig"
      @exec command
    icon: 'folder-plus'
    iconset: 'icomoon'
  },
  {
    type: 'button'
    tooltip: 'Split screen - Horizontally'
    callback: 'pane:split-right'
    icon: 'columns'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Split screen - Vertically'
    callback: 'pane:split-down'
    icon: 'columns fa-rotate-270'
    iconset: 'fa'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Toggle Sidebar'
    callback: 'tree-view:toggle'
    icon: 'list'
    iconset: 'icomoon'
  }
]
