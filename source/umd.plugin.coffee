# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class UmdPlugin extends BasePlugin
		# Plugin configuration
		name: 'umd'

		# Render Document
		# Wrap javascript files in a umd wrapper
		renderDocument: (opts) ->
			# Check
			if opts.extension is 'js' and opts.file.get('umd') is true
				# Header
				prefix =
					"""
					/*global define:false require:false */
					(function (name, context, definition) {
						if (typeof module !== 'undefined' && module.exports) module.exports = definition();
						else if (typeof define === 'function' && define.amd) define(definition);
						else if (typeof provide === 'function') provide(name, definition());
						else context[name] = definition();
					})('#{opts.file.get('basename')}', this, """.trim()

				# Footer
				suffix = ');'

				# Only run if we haven't been applied already
				if opts.content.indexOf(prefix) is -1
					# Strip
					strippedContent = opts.content
						.replace(/^function\s*\(\s*\)\s*\{\s*/, '')
						.replace(/\s*(\(\)|.call\(this\));?\s*$/, '')

					# Ensure function
					if strippedContent[0] is '(' and strippedContent.substr(-1) is ')'
						strippedContent = strippedContent.substring(1,strippedContent.length-1).replace(/^\s|\s$/g, '')
					unless /^function/.test(strippedContent)
						strippedContent = 'function(){\n'+strippedContent+'\n}'

					# Apply
					opts.content =
						prefix + ' ' +
						strippedContent +
						suffix

			# Done
			return