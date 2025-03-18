
--> PLUGINS ------------------------------------------------------ {{{
if vim.g.vscode then
    -- VSCode extension
--	vim.opt.rnu = true
--	vim.opt.nu = true
	vim.cmd.filetype("on")
	vim.cmd.filetype("plugin on")
	vim.cmd.filetype("indent on")
	vim.cmd.syntax("on")
   	require("config.lazy")
	require('custom.remap')
	-->require('coc')
--	require('undotree').setup()
else
    -- ordinary Neovim
	require('custom')
	require("config.lazy")
	require('undotree').setup()
end
--

