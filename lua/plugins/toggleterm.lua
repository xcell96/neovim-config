return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            close_on_exit = true,
            autochdir = true,
            shell = vim.o.shell,
            size = 10,
            open_mapping = [[<c-\>]],
        })

        function _G.set_terminal_keymaps()
            local opts = { noremap = true }
            vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
            vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
            vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
            vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
            vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
            vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

        local Terminal = require("toggleterm.terminal").Terminal
        local python = Terminal:new({ cmd = "python3", hidden = true })

        function _PYTHON_TOGGLE()
            python:toggle()
        end

        vim.keymap.set("n", "<leader>th", ":ToggleTerm dir=./ direction=horizontal<CR>", {})
        vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=40 dir=./ direction=vertical<CR>", {})
        vim.keymap.set("n", "<leader>tp", ":lua _PYTHON_TOGGLE()<CR>", {})
        vim.keymap.set("n", "<leader>tr", ":startinsert<CR>", {})
    end,
}
