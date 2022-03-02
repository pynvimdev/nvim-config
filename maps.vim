lua require("theprimeagen")

nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <A-w> :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>gr :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>tb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>rc :lua require('theprimeagen.telescope').search_dotfiles({ hidden = true })<CR>
nnoremap <leader>gb :lua require('theprimeagen.telescope').git_branches()<CR>
nnoremap <leader>gww :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gwc :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
nnoremap <silent><A-h> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><A-1> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><A-a> :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><A-2> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><A-3> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><A-4> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>vi :Lspsaga implement<CR>
nnoremap <leader>vs :Lspsaga signature_help<CR>
nnoremap <leader>vr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :Lspsaga rename<CR>
nnoremap <leader>vj :Lspsaga diagnostic_jump_next<CR>
nnoremap <leader>vk :Lspsaga diagnostic_jump_prev<CR>
nnoremap <A-k> :Lspsaga hover_doc<CR>
nnoremap <A-d> :Lspsaga show_line_diagnostics<CR>
nnoremap <leader>vc :Lspsaga range_code_action <CR>
nnoremap <leader>vll :call LspLocationList()<CR>
nmap <leader>gs :G<CR>

inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

nnoremap <silent> Q <nop>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
" Probably rename this, because its straight silly to be a worktree.
nnoremap <leader>; :lua require("theprimeagen.git-worktree").execute(vim.loop.cwd(), "just-build")<CR>

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader><CR> :so C:\\Users\\cukri\\AppData\\Local\\nvim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>

nnoremap <leader>x :silent !chmod +x %<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>Y "+Y

nnoremap <leader>d "_d
vnoremap <leader>d "_d

" vim TODO
inoremap <A-q> <esc>
nnoremap <A-q> :
