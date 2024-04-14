local function map(modes, remap, target, desc)
	for _, mode in ipairs(modes) do
		vim.keymap.set(mode, remap, target, {desc = desc, noremap = true, silent = true})
	end
end

map({'n', 'v', 'x'}, 'n', 'j', 'Move Down')
map({'n', 'v', 'x'}, 'e', 'k', 'Move Up')
map({'n', 'v', 'x'}, 'i', 'l', 'Move Right')


map({'n'}, 'l', 'i', 'Insert')
map({'n'}, 'j', 'n', 'Next')
map({'n'}, 'k', 'e', 'End')

map({'n'}, '<leader>pv', vim.cmd.Ex, 'Exit File')

-- ThePrimeagen remaps
map({'v'}, 'N', ":m '>+1<CR>gv=gv", 'Move Down highlighted line')
map({'v'}, 'E', ":m '>-2<CR>gv=gv", 'Move Up highlighted line')

map({'n'}, 'N', 'mzJ`z', 'Append next line to current')

map({'n'}, '<C-d>', '<C-d>zz', 'Move half screen down')
map({'n'}, '<C-u>', '<C-u>zz', 'Move half screen up')

map({'x'}, 'p', "\"_dP", 'Paste Replace')
map({'n'}, 'rr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], 'Replace Word')


map({'i'}, '<C-l>', '<ESC>', 'Escape')
