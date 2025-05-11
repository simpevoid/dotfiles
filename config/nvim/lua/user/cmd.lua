local function Cmd(...)
    if vim.t.pterm and vim.api.nvim_buf_is_loaded(vim.t.pterm) then
	vim.api.nvim_buf_delete(vim.t.pterm, { force = true })
    end

    local command = table.concat({ ... }, " ")
    vim.cmd("botright terminal bash -i -c " .. "\"" .. command .. "\"")
    vim.wo.statusline = " "
    vim.t.pterm = vim.api.nvim_get_current_buf()
end
vim.api.nvim_create_user_command('Cmd', function(opts)
    Cmd(unpack(opts.fargs))
end, { nargs = "+", complete = "shellcmdline" })

vim.keymap.set('n', '<leader>x', ':Cmd ')
