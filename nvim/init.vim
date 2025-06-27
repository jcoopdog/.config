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
set notermguicolors
let hlstate=0
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
lua vim.diagnostic.config({ virtual_text = true })
"autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
"colorscheme tokyonight
colorscheme wal
"TransparentEnable
nnoremap <Tab> :tabnext<cr>
nnoremap <S-Tab> :tabprev<cr>
nnoremap <S-cr> o<Esc>
inoremap <S-cr> <Esc>o
vnoremap <Tab> >
vnoremap <S-Tab> <

tnoremap <Esc> <C-\><C-n>
"Hyprlang LSP
lua vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, { pattern = {"*.hl", "hypr*.conf"}, callback = function(event) vim.lsp.start { name = "hyprlang", cmd = {"hyprls"}, root_dir = vim.fn.getcwd(), } end })
lua vim.filetype.add({ pattern = { [".*/hypr/.*%.conf"] = "hyprlang" }, })
