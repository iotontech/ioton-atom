path = require 'path'
utils = require './utils'
entries = require './entries'
pkg = require '../package.json'

toolBarIoton = {};

toolBarIoton.config =
  custom:
    title: 'Custom entries file'
    description: 'A cson or json file path containing extra entries. Path should be relative to the Atom\'s configuration directory (.atom). For details read tool-bar-ioton\'s README.md file'
    type: 'string'
    default: ''

toolBarIoton.deactivate = ->
  @toolBar?.removeItems()

toolBarIoton.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'tool-bar-ioton'

  customEntries = utils.getCustomEntries(atom.config.get(pkg.name + '.custom'))
  if customEntries
    entries = entries.concat(customEntries)

  for entry in entries
    utils.parseEntry(@toolBar, entry)

module.exports = toolBarIoton;
