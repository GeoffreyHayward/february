// settings.js

module.exports = {
    // If you only want the editor available in development:
    // (When NODE_ENV === 'production', disable the editor)
    httpAdminRoot: (process.env.NODE_ENV === 'production') ? false : '/',

    // You can still serve the UI from the same endpoint or a different path
    ui: {
        path: "/ui"
    },

    // Basic logging:
    logging: {
        console: {
            level: (process.env.NODE_ENV === 'production') ? "info" : "debug",
            metrics: false,
            audit: false
        }
    },

    flowFilePretty: true,

    // Other typical Node-RED settings...
    // e.g., functionGlobalContext, editorTheme, etc.
};
