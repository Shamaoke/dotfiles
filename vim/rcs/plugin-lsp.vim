
""
"" ::: LSP :::
""

""
"" Language Server Protocol (LSP) plugin for Vim9
""
"" [yegappan/lsp: Language Server Protocol (LSP) plugin for Vim9](https://github.com/yegappan/lsp)
""

""
"" Configure LSP
""
let lspOpts = #{
  \  popupBorder: v:true,
  \  popupBorderChars: ['─', '│', '─', '│', '┌', '┐', '┘', '└']
  \}

autocmd User LspSetup call LspOptionsSet(lspOpts)

""
"" Register LSP servers
""
let lspServers = [
  \
  \#{
  \  name: 'clangd',
  \  filetype: ['cpp'],
  \  path: '/usr/bin/clangd',
  \  args: [ ]
  \},
  \
  \#{
  \  name: 'rust-analyzer',
  \  filetype: ['rust'],
  \  path: '/home/user/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer',
  \  args: [ ]
  \},
  \
  \#{
  \  name: 'neocmakelsp',
  \  filetype: ['cmake'],
  \  path: '/home/user/.cargo/bin/neocmakelsp',
  \  args: ['stdio']
  \},
  \
  \#{
  \  name: 'slint-lsp',
  \  filetype: ['slint'],
  \  path: '/home/user/.cargo/bin/slint-lsp',
  \  args: [ ]
  \},
  \
  \#{
  \  name: 'qmlls',
  \  filetype: ['qml'],
  \  path: '/usr/lib/qt6/bin/qmlls',
  \  args: [ ]
  \}
\]

autocmd User LspSetup call LspAddServer(lspServers)

""
"" ::: Autocommands :::
""

""
"" `:LspHover`
""
"" Show the documentation for the symbol under the cursor in a popup window.  The
"" following keys can be used to scroll the popup window:
""
""   `<CTRL-E>` - Scroll window downwards by a line.
""   `<CTRL-D>` - Scroll window downwards by 'scroll' lines.
""   `<CTRL-F>` - Scroll window downards by a page.
""   `<PageDown>` - ditto.
""   `<CTRL-Y>` - Scroll window upwards by a line.
""   `<CTRL-U>` - Scroll window upwards by 'scroll' lines.
""   `<CTRL-B>` - Scroll window upwards by a page.
""   `<PageUp>` - ditto.
""   `<CTRL-Home>` - Goto the first line
""   `<CTRL-End>`  - Goto the last line
""
"" Pressing any other key will close the popup window.
""
"" If you want to show the symbol documentation in the `preview-window` instead of
"" in a popup window set
""
""     `LspOptionsSet({'hoverInPreview': true})`
""
"" You can use the `:pclose` command to close the preview window.
""
"" You can use the `K` key in normal mode to display the documentation for the
"" keyword under the cursor by setting the `keywordprg` Vim option:
""
""     `:set keywordprg=:LspHover`
""
"" With hoverFallback enabled (disabled by default), falls back to the file type
"" specific `keywordprg`. See `lsp-opt-hoverFallback`.
""
autocmd CursorHold * silent! LspHover

""
"" ::: Keybindings :::
""

"" Go to the declaration of the symbol under cursor
nmap <silent> <LocalLeader>jk :vertical LspGotoDeclaration<CR>

"" Go to the definition of the symbol under cursor
nmap <silent> <LocalLeader>jj :vertical LspGotoDefinition<CR>

"" Display the diagnostics messages from the language
nmap <silent> <LocalLeader>jl :LspDiag show<CR>

"" Display the diagnostic message for the current line
nmap <silent> <LocalLeader>jc :LspDiag current<CR>

"" Go to the diagnostic message after the current cursor position
nmap <silent> <LocalLeader>jn :LspDiag next<CR>

"" Go to the diagnostic message before the current cursor position
nmap <silent> <LocalLeader>jp :LspDiag prev<CR>

"" Apply the code action supplied by the language server to the diagnostic in the current line
nmap <LocalLeader>ja :LspCodeAction<CR>

"" Display the symbols in the current file in a popup menu
nmap <LocalLeader>js :LspDocumentSymbol<CR>

"" Creates a new location list with the list of locations where the symbol under the cursor is referenced
nmap <LocalLeader>jf :LspShowReferences<CR>

"" Restart the language server
nmap <LocalLeader>jr :LspServer restart<CR>

