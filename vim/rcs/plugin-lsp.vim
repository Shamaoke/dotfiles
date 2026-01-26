
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
  \  name: 'rustlang',
  \  filetype: ['rust'],
  \  path: '/home/user/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer',
  \  args: [ ]
  \}
\]

autocmd User LspSetup call LspAddServer(lspServers)

