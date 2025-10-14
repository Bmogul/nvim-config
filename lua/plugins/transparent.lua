
-- Assuming you have already set up your plugin manager and lazy loading mechanism
-- ...

-- Define a function to load the transparent plugin configuration
local function setup_transparent()
    require("transparent").setup({
        groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
        },
        extra_groups = {
            'NeoTreeNormal', 'NeoTreeNormalNC', 'NeoTreeEndOfBuffer',
        }, -- Additional groups that should be cleared
        exclude_groups = {}, -- Groups you don't want to clear
    })
end

-- Lazy load the transparent plugin
return {
    "xiyaowong/transparent.nvim", -- Replace with the actual path to the transparent plugin
    config = function()
        setup_transparent()
    end,
}
