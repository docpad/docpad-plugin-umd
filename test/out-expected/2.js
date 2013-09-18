/*global define:false require:false */
(function (name, context, definition) {
	if (typeof module !== 'undefined' && module.exports) module.exports = definition();
	else if (typeof define === 'function' && define.amd) define(definition);
	else if (typeof provide === 'function') provide(name, definition());
	else context[name] = definition();
})('2', this, function(){
	// a typical javascript wrapper
});