lua require("config.lazy")
set number
set relativenumber
set mousemodel=extend
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=eol:↴,tab:│·,space:·
set list
set termguicolors
set nowrap
let hlstate=0
nnoremap <F4> <cmd>if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
lua vim.diagnostic.config({ virtual_text = true })
"autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
set background=dark
colorscheme oxocarbon
"colorscheme wal
"TransparentEnable
nnoremap <Tab> <cmd>tabnext<cr>
nnoremap <S-Tab> <cmd>tabprev<cr>
nnoremap <S-cr> o<Esc>
inoremap <S-cr> <Esc>o
vnoremap <Tab> >
vnoremap <S-Tab> <

tnoremap <Esc> <C-\><C-n>

nnoremap <C-S> <cmd>ToggleTerm direction=float size=40<CR>

"Hyprlang LSP
lua vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, { pattern = {"*.hl", "hypr*.conf"}, callback = function(event) vim.lsp.start { name = "hyprlang", cmd = {"hyprls"}, root_dir = vim.fn.getcwd(), } end })
lua vim.filetype.add({ pattern = { [".*/hypr/.*%.conf"] = "hyprlang" }, })
