
""
"" ::: YouCompleteMe :::
""

""
"" `g:ycm_confirm_extra_conf`
""
"" When this option is set to `1` YCM will ask once per `.ycm_extra_conf.py` file
"" if it is safe to be loaded. This is to prevent the execution of malicious code
"" from a `.ycm_extra_conf.py` file you didn't write.
""
"" To selectively get YCM to ask/not ask about loading certain `.ycm_extra_conf.py`
"" files, see the `g:ycm_extra_conf_globlist` option.
""
"" Default: 1
""
"" `https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#the-gycm_confirm_extra_conf-option`
""
let g:ycm_confirm_extra_conf = 0

""
"" `g:ycm_key_invoke_completion`
""
"" This option controls the key mapping used to invoke the completion menu for
"" semantic completion. By default, semantic completion is triggered automatically
"" after typing characters appropriate for the language, such as ., ->, ::, etc. in
"" insert mode (if semantic completion support has been compiled in). This key
"" mapping can be used to trigger semantic completion anywhere. Useful for
"" searching for top-level functions and classes.
""
"" Console Vim (not Gvim or MacVim) passes <Nul> to Vim when the user types
"" <C-Space> so YCM will make sure that <Nul> is used in the map command when
"" you're editing in console Vim, and <C-Space> in GUI Vim. This means that you can
"" just press <C-Space> in both the console and GUI Vim and YCM will do the right
"" thing.
""
"" Setting this option to an empty string will make sure no mapping is created.
""
"" Default: <C-Space>
""
"" `https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#the-gycm_key_invoke_completion-option`
""
let g:ycm_key_invoke_completion = '<C-i>i'

""
"" `g:ycm_auto_hover`
""
"" This option controls whether or not YCM shows documentation in a popup at the
"" cursor location after a short delay. Only supported in Vim.
""
"" When this option is set to `CursorHold`, the popup is displayed on the
"" `CursorHold` autocommand. See `:help CursorHold` for the details, but this means
"" that it is displayed after `updatetime` milliseconds. When set to an empty string,
"" the popup is not automatically displayed.
""
"" In addition to this setting, there is the `<plug>(YCMHover)` mapping, which can be
"" used to manually trigger or hide the popup (it works like a toggle). For
"" example:
""
"" `nmap <leader>D <plug>(YCMHover)`
""
"" After dismissing the popup with this mapping, it will not be automatically
"" triggered again until the cursor is moved (i.e. `CursorMoved` autocommand).
""
"" The displayed documentation depends on what the completer for the current
"" language supports. It's selected heuristically in this order of preference:
""
""   1. `GetHover` with `markdown` syntax
""
""   2. `GetDoc` with no syntax
""
""   3. `GetType` with the syntax of the current file.
""
"" You can customise this by manually setting up b:ycm_hover to your liking. This
"" buffer-local variable can be set to a dictionary with the following keys:
""
"" * `command`: The YCM completer subcommand which should be run on hover
""
"" * `syntax`: The syntax to use (as in set syntax=) in the popup window for highlighting.
""
"" * `popup_params`: The params passed to a popup window which gets opened.
""
"" For example, to use C/C++ syntax highlighting in the popup for C-family
"" languages, add something like this to your vimrc:
""
"" ````
"" augroup MyYCMCustom
""   autocmd!
""   autocmd FileType c,cpp let b:ycm_hover = {
""     \ 'command': 'GetDoc',
""     \ 'syntax': &filetype
""     \ }
"" augroup END
"" ````
""
"" You can also modify the opened popup with `popup_params` key. For example, you can
"" limit the popup's maximum width and add a border to it:
""
"" ````
"" augroup MyYCMCustom
""   autocmd!
""   autocmd FileType c,cpp let b:ycm_hover = {
""     \ 'command': 'GetDoc',
""     \ 'syntax': &filetype,
""     \ 'popup_params': {
""     \     'maxwidth': 80,
""     \     'border': [],
""     \     'borderchars': ['─', '│', '─', '│', '┌', '┐', '┘', '└'],
""     \   },
""     \ }
"" augroup END
"" ````
""
"" See `:help popup_create-arguments` for the list of available popup window options.
""
"" Default: 'CursorHold'
""
"" let g:ycm_auto_hover = 'CursorHold'

""
"" `g:ycm_goto_buffer_command`
""
"" Defines where `GoTo*` commands result should be opened. Can take one of the
"" following values: `'same-buffer'`, `'split'`, or `'split-or-existing-window'`.
"" If this option is set to the `'same-buffer'` but current buffer can not be
"" switched (when buffer is modified and `nohidden` option is set), then result
"" will be opened in a split. When the option is set to `'split-or-existing-window'`,
"" if the result is already open in a window of the current tab page (or any tab
"" pages with the `:tab` modifier; see below), it will jump to that window.
"" Otherwise, the result will be opened in a split as if the option was set to `'split'`.
""
"" To customize the way a new window is split, prefix the `GoTo*` command with one
"" of the following modifiers: `:aboveleft`, `:belowright`, `:botright`,
"" `:leftabove`, `:rightbelow`, `:topleft`, and `:vertical`. For instance, to
"" split vertically to the right of the current window, run the command:
""
"" ````
"" :rightbelow vertical YcmCompleter GoTo
"" ````
""
"" To open in a new tab page, use the `:tab` modifier with the `'split'` or
"" `'split-or-existing-window'` options e.g.:
""
"" ````
"" :tab YcmCompleter GoTo
"" ````
""
"" Default: `'same-buffer'`
""
let g:ycm_goto_buffer_command = 'split'

""
"" ::: YouCompleteMe Autocommands :::
""

""
"" Configure the documentation popup
""
augroup YCMCustom
  autocmd!
  autocmd FileType c,cpp let b:ycm_hover = {
    \   'command': 'GetDoc',
    \   'syntax': &filetype,
    \   'popup_params': {
    \      'maxwidth': 100,
    \      'border': [],
    \      'borderchars': ['─', '│', '─', '│', '┌', '┐', '┘', '└']
    \   }
    \ }
augroup END
"" Press <C-c> to hide the pupup.

""
"" ::: YouCompletMe Hotkeys :::
""
nmap <silent> <C-i>c :vertical YcmCompleter GoToDeclaration<CR>
nmap <silent> <C-i>f :vertical YcmCompleter GoToDefinition<CR>
"" Use <C-o> to jump back to where you were before.
"" Use <C-i> to jump forward.
"" See `:help quickfix` for details.

