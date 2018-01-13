exports.decorateConfig = config => {

    // Set default theme to peacock if not present.
    var themeName = config.rainglow || 'peacock';

    // Load rainglow color from subdirectory.
    var colors = require(__dirname + '/colors/' + themeName);

    // Override config object with new colors.
    return Object.assign({}, config, colors);
};