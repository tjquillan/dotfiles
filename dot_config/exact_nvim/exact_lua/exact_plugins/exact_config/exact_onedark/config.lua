return function()
    local onedark = require('onedark')
    onedark.setup({
        style = 'dark',
        highlights = {
            rainbowcol1 = {fg = '$cyan'},
        },
    })
    onedark.load()
end