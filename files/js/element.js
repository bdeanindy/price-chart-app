/**
 * This is required for element rendering to be possible
 * @type {PlatformElement}
 *
 * we normalize the styles on initial load.
 */

(function() {
    var PricingTable = PlatformElement.extend({
        initialize: function() {
            // we normalize the styles on initial load.
            $(document).ready(function() {
                this.fixStyles();
            }.bind(this));

            this.normalizeAfterPlaceholders();
            this.fixStyles();
        },

        normalizeAfterPlaceholders: function() {
            this.placeholderInterval = setInterval(function() {
                if (this.$('.platform-element-child-placeholder').length == 0) {
                    // first off, stop listening
                    clearInterval(this.placeholderInterval);
                    this.fixStyles();
                }
            }.bind(this), 100); 
        },

        // normalizes the style of the passed element.
        fixStyles: function($element) {
            this.$('li.wsite-text').each(function(index, value) {
                var $value = $(value);
                var defaultText = $value.data('default-text');
                var $el = $(value).find('.editable-text');
                if ($el.text() === defaultText) {
                    $el.attr('style', '');
                }
            });

            this.$el.find('.element').each(function(index) {
                $(this).attr('style', '');
            });
        }
    });

    return PricingTable;
})();