local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Select with S-<direction>
keymap("n", "<S-h>", "<esc>vh", opts)
keymap("n", "<S-j>", "<esc>vj", opts)
keymap("n", "<S-k>", "<esc>vk", opts)
keymap("n", "<S-l>", "<esc>vl", opts)

-- Invert w with S-w
keymap("n", "<S-w>", "b", opts)

-- Open file tree
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Delete buffer
keymap("n", "<leader>w", ":Bdelete<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Folding
keymap("n", "<leader>-", "zM", opts)
keymap("n", "<leader>=", "zR", opts)

-- Don't copy what I delete
keymap("n", "d", "\"_d", opts)

-- Insert --
-- (empty)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Select with S-<direction>
keymap("v", "<S-h>", "h", opts)
keymap("v", "<S-j>", "jzz", opts)
keymap("v", "<S-k>", "kzz", opts)
keymap("v", "<S-l>", "l", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Don't copy what I delete
keymap("v", "d", "\"_d", opts)
keymap("v", "p", "\"_dP", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<C-J>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-K>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)

-- Don't copy what I delete
keymap("x", "d", "\"_d", opts)
keymap("x", "p", "\"_dP", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap(
  "n",
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
  opts
)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Gitsigns --
keymap("n", "<C-k>", "<cmd>Gitsigns prev_hunk<cr>", opts)
keymap("n", "<C-j>", "<cmd>Gitsigns next_hunk<cr>", opts)
keymap("n", "<leader>z", "<cmd>Gitsigns reset_hunk<cr>", opts)
keymap("n", "<leader>b", "<cmd>Gitsigns preview_hunk<cr>", opts)

-- Nvimtree
-- keymap("n", "<leader>e", ":NvimTreeFocus<cr>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-f>", ":Format<cr>", opts)
