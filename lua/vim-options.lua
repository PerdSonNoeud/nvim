-- Leader
vim.g.mapleader = " "
-- Set clipboard to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set number
vim.cmd("set number")

-- General settings for all file types
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    command = "setlocal expandtab shiftwidth=4 tabstop=4"
})

-- Specific settings for Python
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt.textwidth = 120
    end,
})

-- Specific settings for OCaml
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ocaml",
    command = "setlocal expandtab shiftwidth=2 tabstop=2"
})

-- Specific settings for C
vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    command = "setlocal expandtab shiftwidth=2 tabstop=2 textwidth=120",
})

-- Specific settings for Javascript
vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    command = "setlocal expandtab shiftwidth=2 tabstop=2"
})

-- Specific settings for Makefile
vim.api.nvim_create_autocmd("FileType", {
    pattern = "Makefile",
    command = "setlocal shiftwidth=4"
})
