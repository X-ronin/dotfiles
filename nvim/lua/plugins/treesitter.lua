require'nvim-treesitter.configs'.setup {	
--- List parser names ---
  ensure_installed = { "kotlin", "lua", "bash", "html", "css", "markdown", "markdown_inline", "r", "sql" },

--- Options ---
  sync_install = false,
--auto_install = true,
ignore_install = { "javascript" },

-- Highlight
  highlight = {
    enable = true,
  --disable = { " " },
    additional_vim_regex_highlighting = false,
  },
}

--- Use bash highlight in zsh ---
local ft_to_lang = require('nvim-treesitter.parsers').ft_to_lang
require('nvim-treesitter.parsers').ft_to_lang = function(ft)
    if ft == 'zsh' then
        return 'bash'
    end
    return ft_to_lang(ft)
end
