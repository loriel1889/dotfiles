return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      php = { "php-cs-fixer" },
    },
    formatters = {
      ["php-cs-fixer"] = {
        command = "php-cs-fixer",
        args = {
          "fix",
          "--rules=@PhpCsFixer,-phpdoc_separation",
          "$FILENAME",
        },
        stdin = false,
      },
    },
    notify_on_error = true,
  },
}
