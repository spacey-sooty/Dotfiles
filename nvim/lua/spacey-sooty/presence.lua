require('presence').setup({
    auto_update         = true,
    neovim_image_text   = 'The One True Text Editor',
    main_image          = 'neovim',
    client_id           = '793271441293967371',
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = true,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,
    editing_text        = 'Editing %s',
    file_explorer_text  = 'Browsing %s',
    git_commit_text     = 'Cooking commit message',
    plugin_manager_text = 'Ohh yeah we ballin',
    reading_text        = 'Reading %s',
    workspace_text      = 'Working on %s',
    line_number_text    = 'Line %s out of %s',
})
