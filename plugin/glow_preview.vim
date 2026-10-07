" glow-preview: preview the current markdown file with glow, in a terminal
" split (static) or in a tmux / WezTerm pane that re-renders on save (live).
if exists('g:loaded_glow_preview')
  finish
endif
let g:loaded_glow_preview = 1

" Live preview (needs entr) instead of a static terminal split
let g:glow_preview_live = get(g:, 'glow_preview_live', 0)

command! GlowPreview call glow_preview#preview()
command! GlowPreviewToggleLive call glow_preview#toggle_live()

" <Plug> mappings; no keys are bound here (see README)
nnoremap <silent> <Plug>(glow-preview) <Cmd>call glow_preview#preview()<CR>
nnoremap <silent> <Plug>(glow-preview-toggle-live) <Cmd>call glow_preview#toggle_live()<CR>
