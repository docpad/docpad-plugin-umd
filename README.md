# Universal Module Definition (UMD) Plugin for DocPad

<!-- BADGES/ -->

[![Build Status](https://img.shields.io/travis/docpad/docpad-plugin-umd/master.svg)](http://travis-ci.org/docpad/docpad-plugin-umd "Check this project's build status on TravisCI")
[![NPM version](https://img.shields.io/npm/v/docpad-plugin-umd.svg)](https://npmjs.org/package/docpad-plugin-umd "View this project on NPM")
[![NPM downloads](https://img.shields.io/npm/dm/docpad-plugin-umd.svg)](https://npmjs.org/package/docpad-plugin-umd "View this project on NPM")
[![Dependency Status](https://img.shields.io/david/docpad/docpad-plugin-umd.svg)](https://david-dm.org/docpad/docpad-plugin-umd)
[![Dev Dependency Status](https://img.shields.io/david/dev/docpad/docpad-plugin-umd.svg)](https://david-dm.org/docpad/docpad-plugin-umd#info=devDependencies)<br/>
[![Gratipay donate button](https://img.shields.io/gratipay/docpad.svg)](https://www.gratipay.com/docpad/ "Donate weekly to this project using Gratipay")
[![Flattr donate button](https://img.shields.io/badge/flattr-donate-yellow.svg)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](https://img.shields.io/badge/bitcoin-donate-yellow.svg)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](https://img.shields.io/badge/wishlist-donate-yellow.svg)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

<!-- /BADGES -->


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

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-umd/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-umd/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)

### Sponsors

No sponsors yet! Will you be the first?

[![Gratipay donate button](https://img.shields.io/gratipay/docpad.svg)](https://www.gratipay.com/docpad/ "Donate weekly to this project using Gratipay")
[![Flattr donate button](https://img.shields.io/badge/flattr-donate-yellow.svg)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](https://img.shields.io/badge/bitcoin-donate-yellow.svg)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](https://img.shields.io/badge/wishlist-donate-yellow.svg)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

### Contributors

These amazing people have contributed code to this project:

- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/docpad/docpad-plugin-umd/commits?author=balupton)
- [RobLoach](https://github.com/RobLoach) — [view contributions](https://github.com/docpad/docpad-plugin-umd/commits?author=RobLoach)

[Become a contributor!](https://github.com/docpad/docpad-plugin-umd/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->


