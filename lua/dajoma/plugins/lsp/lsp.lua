return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp = require("lspconfig")
            -- setup lsps
            lsp.lua_ls.setup({}) 
        end,
    }
}
