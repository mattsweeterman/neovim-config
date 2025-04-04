return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disabled = { c = true, cpp = true }
      if disabled[vim.bo[bufnr].filetype] then return nil end
      return { timeout_ms = 500, lsp_fallback = true }
    end,

    formatters = {
      custom_prettier = {
        command = 'prettier',
        args = {
          '--arrow-parens', 'always',
          '--bracket-same-line', 'false',
          '--bracket-spacing', 'true',
          '--semi', 'true',
          '--single-quote', 'true',
          '--jsx-single-quote', 'false',
          '--quote-props', 'consistent',
          '--trailing-comma', 'none',
          '--single-attribute-per-line', 'false',
          '--html-whitespace-sensitivity', 'css',
          '--vue-indent-script-and-style', 'false',
          '--prose-wrap', 'preserve',
          '--insert-pragma', 'false',
          '--require-pragma', 'false',
          '--print-width', '120',
          '--tab-width', '4',
          '--use-tabs', 'true',
          '--embedded-language-formatting', 'auto',
          '--plugin', 'prettier-plugin-sh',
          '--stdin-filepath', '$FILENAME',
        },
        stdin = true,
        condition = function(ctx)
          return vim.fs.basename(ctx.filename):match('%.js$')
            or ctx.filename:match('%.ts$')
            or ctx.filename:match('%.jsx$')
            or ctx.filename:match('%.tsx$')
            or ctx.filename:match('%.json$')
            or ctx.filename:match('%.html$')
            or ctx.filename:match('%.css$')
            or ctx.filename:match('%.scss$')
            or ctx.filename:match('%.vue$')
            or ctx.filename:match('%.sh$')
        end,
      },
    },

    formatters_by_ft = {
      javascript = { 'custom_prettier' },
      typescript = { 'custom_prettier' },
      javascriptreact = { 'custom_prettier' },
      typescriptreact = { 'custom_prettier' },
      json = { 'custom_prettier' },
      html = { 'custom_prettier' },
      css = { 'custom_prettier' },
      scss = { 'custom_prettier' },
      vue = { 'custom_prettier' },
      sh = { 'custom_prettier' },
      lua = { 'stylua' }, -- Keep stylua for lua
    },
  },
}

