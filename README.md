# glow-preview

Preview the current markdown file with [glow](https://github.com/charmbracelet/glow).

- **Static** (default): glow renders the file once in a vertical `:terminal`
  split. Running it again replaces the previous preview.
- **Live**: glow re-renders on every save in a pane next to Vim, through
  [entr](https://github.com/eradman/entr). Inside tmux this uses
  `tmux split-window`; in WezTerm, `wezterm cli split-pane`. Without entr, or
  outside tmux and WezTerm, it falls back to the static preview.

| Command | `<Plug>` mapping | What it does |
| --- | --- | --- |
| `:GlowPreview` | `<Plug>(glow-preview)` | Preview the current file. |
| `:GlowPreviewToggleLive` | `<Plug>(glow-preview-toggle-live)` | Switch between static and live preview. |

No keys are bound. For example, in `~/.vim/ftplugin/markdown.vim`:

```vim
nmap <buffer> <localleader>p <Plug>(glow-preview)
nmap <buffer> <localleader>P <Plug>(glow-preview-toggle-live)
```

## Options

| Variable | Default | |
| --- | --- | --- |
| `g:glow_preview_live` | `0` | Start in live mode. |

## Install

Requires `glow`; `entr` (and tmux or WezTerm) for live mode. No other plugins.

```vim
Plug 'roumail/glow-preview'
```
