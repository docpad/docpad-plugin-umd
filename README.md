# Universal Module Definition (UMD) Plugin for DocPad

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-umd.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-umd "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-umd.png)](https://npmjs.org/package/docpad-plugin-umd "View this project on NPM")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

Wrap specified JavaScript documents in the Universal Module Definition (UMD) allowing them to run in AMD, Require.js, CommonJS/Node.js, Ender and Vanilla environments automatically


## Install

```
docpad install umd
```


## Usage
For the documents that you want to be wrapped inside UMD, specify `umd: true` inside your document's meta data header like so:

```
---
umd: true
---

// your javascript content
```

and it will be transformed into:

``` javascript
/*global define:false require:false */
(function (name, context, definition) {
	if (typeof module !== 'undefined' && module.exports) module.exports = definition();
	else if (typeof define === 'function' && define.amd) define(definition);
	else if (typeof provide === 'function') provide(name, definition());
	else context[name] = definition();
})('the-javascript-file-basename', this, function(){
	// your javascript content
});
```

## History
[You can discover the history inside the `History.md` file](https://github.com/bevry/docpad-plugin-umd/blob/master/History.md#files)


## Backers
[You can discover the financial backers of this project inside the `Backers.md` file](https://github.com/docpad/docpad-plugin-umd/blob/master/Backers.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013+ [Bevry Pty Ltd](http://bevry.me)