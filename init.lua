
--> PLUGINS ------------------------------------------------------ {{{
if vim.g.vscode then
    -- VSCode extension
	vim.opt.rnu = true
	vim.opt.nu = true
	vim.cmd.filetype("on")
	vim.cmd.filetype("plugin on")
	vim.cmd.filetype("indent on")
	vim.cmd.syntax("on")
	require("config.lazy")
	-->require('coc')
	require('custom.remap')
	require('undotree').setup()
else
    -- ordinary Neovim
	require("config.lazy")
	-->require('coc')
	require('custom')
	require('undotree').setup()
end
--

