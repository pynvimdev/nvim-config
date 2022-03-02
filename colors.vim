fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder  guifg=#7739e3
    hi TelescopePreviewBorder  guifg=#7739e3
    hi TelescopePromptBorder  guifg=#7739e3
    hi TelescopeResultsBorder  guifg=#7739e3
endfun


fun! ColorMyPencilsA()
    set background=dark
    if has('nvim')
        colorscheme ayu
    endif
    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder  guifg=#7739e3
    hi TelescopePreviewBorder  guifg=#7739e3
    hi TelescopePromptBorder  guifg=#7739e3
    hi TelescopeResultsBorder  guifg=#7739e3
endfun

call ColorMyPencils()
nnoremap <leader>cmp :call ColorMyPencils()<CR>
nnoremap <leader>vwb :let g:theprimeagen_colorscheme =
