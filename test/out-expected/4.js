/*global define:false require:false */
(function (name, context, definition) {
	if (typeof module != 'undefined' && module.exports) module.exports = definition();
	else if (typeof define == 'function' && define.amd) define(definition);
	else context[name] = definition();
})('4', this, function() {
  var multiply;

  multiply = function(x, y) {
    return x * y;
  };

});