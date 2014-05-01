CKEDITOR.editorConfig = function( config ) {
    config.toolbarGroups = [
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
        { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
        { name: 'colors' },
        { name: 'links' }
    ];
};
