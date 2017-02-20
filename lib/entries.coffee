module.exports = [
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'New Ioton Project'
    callback: (ioton) ->
      @exec = require('child_process').exec
      process_architecture = process.platform
      switch process_architecture
        when 'linux' then @exec process.env['HOME'] + "/.atom/packages/ioton/bin/iotonConfig"
        when 'win32' then @exec process.env['USERPROFILE'] + "\\.atom\\packages\\ioton\\bin\\iotonConfig"
    icon: 'folder-plus'
    iconset: 'icomoon'
  },
  {
    type: 'spacer'
  }
]
