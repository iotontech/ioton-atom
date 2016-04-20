module.exports = [
  {
    type: 'button'
    tooltip: 'New Project'
    dependency: 'ioton'
    callback: 'ioton:new-project'
    icon: 'folder-plus'
    iconset: 'icomoon'
  },
  {
    type: 'button'
    tooltip: 'Build Project'
    dependency: 'ioton'
    callback: 'ioton:build'
    icon: 'hammer'
    iconset: 'ion'
  },
  {
    type: 'button'
    tooltip: 'Upload Firmware'
    dependency: 'ioton'
    callback: 'ioton:upload'
    icon: 'arrow-circle-o-up'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Clean Build Files'
    dependency: 'ioton'
    callback: 'ioton:clean'
    icon: 'bin'
    iconset: 'icomoon'
  },
  {
    type: 'button'
    tooltip: 'Serial Monitor'
    dependency: 'ioton'
    callback: 'ioton:serial-monitor'
    icon: 'terminal'
    iconset: 'icomoon'
  },
  {
    type: 'spacer'
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
    tooltip: 'Toggle Fullscreen'
    callback: 'window:toggle-full-screen'
    icon: 'arrows-alt'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Toggle Sidebar'
    callback: 'tree-view:toggle'
    icon: 'list'
    iconset: 'icomoon'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Open Settings View'
    callback: 'settings-view:open'
    icon: 'gear-a'
    iconset: 'ion'
  }
]
