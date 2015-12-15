# Toolbar Ioton - a tool-bar plugin

## Description

A tool-bar plugin that adds a toolbar with ioton platform integration and commonly used actions.

![screenshot](https://github.com/iotontech/tool-bar-ioton/blob/master/screenshot.png)

Available toolbar buttons:

* __create new ioton project__
* __build an ioton project__
* __upload to the ioton board__
* __clean an ioton project__
* -
* __split screen horizontally__
* __split screen vertically__
* -
* __toggle fullscreen__
* __toggle tree-view__
* -
* __settings__

__Note__: The toolbar buttons that require other packages will only appear if you have those packages installed

## Installation

First you have to install the `tool-bar` nad `aioton` package which are required:

```bash
apm install tool-bar
apm install aioton
```

Then you install the `tool-bar-ioton` package:

```bash
apm install tool-bar-ioton
```

## Custom entries

It's also possbile to add your own desired buttons to the tool bar. To utilize this feature you have to go to the settings of tool-bar-almighty and enter a path relative to your `.atom` directory that contains the entries you want to add. They will be added below the default entries.

The file must be a javascript module that exports an Array of entries.

### Format

The format is the same as [tool-bar's](https://github.com/suda/tool-bar#example) with 2 extra properties. The first one is `type` which indicates whether the entry is a `button` or a `spacer` while the second one is `dependency` which indicates whether a button's package is not installed by default in Atom and should only be displayed if it's package is installed.
The `lib/entries.coffee` is another example on how to format your entries.

### Example

* The file's location `~/.atom/custom_entries.js`
* The tool-bar-almighty setting's value must match the filename mentioned above `custom_entries.js`
* The content of the file should look like the following:

```js
module.exports = [
  {
    type: 'button',
    tooltip: 'Open File',
    callback: 'application:open-file',
    icon: 'document-text',
    iconset: 'ion'
  },
  {
    type: 'button',
    tooltip: 'Open Folder',
    callback: 'application:open-folder',
    icon: 'folder',
    iconset: 'ion'
  },
  {
    type: 'button',
    tooltip: 'Merge Conflicts',
    dependency: 'merge-conflicts',
    callback: 'merge-conflicts:detect',
    icon: 'code-fork',
    iconset: 'fa'
  }
]
```

## License

The MIT License
