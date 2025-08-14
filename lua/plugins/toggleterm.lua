return {
    -- amongst your other plugins
    {'akinsho/toggleterm.nvim',
        version = "*",
        config =function ()
            require("toggleterm").setup{
                size = 20,
                open_mapping = [[<leader>\]],
                hide_numbers = true, -- hide the number column in toggleterm buffers
                shade_filetypes = {},
                shade_terminals = true,
                start_in_insert = true,
                insert_mappings = true, -- whether or not the open mapping applies in insert mode
                persist_size = true,
                direction = 'float',
                close_on_exit = true, -- close the terminal window when the process exits
                shell = vim.o.shell, -- change the default shell
                float_opts = {
                    border = 'single',
                    width = 150,
                    height = 30,
                    winblend = 3,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    }
                }
            }
        end
    }
}
