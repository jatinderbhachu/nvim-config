local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local startify = require("alpha.themes.startify")


startify.section.top_buttons.val = {
    startify.button("p", "  Find project", ":Telescope projects <CR>"),
    startify.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
    startify.button("t", "  Find text", ":Telescope live_grep <CR>"),
    startify.button("c", "  Configuration", ":e ~/AppData/local/nvim/init.lua <CR>"),
    startify.button("q", "  Quit Neovim", ":qa<CR>"),
}

alpha.setup(startify.opts)
