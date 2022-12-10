require'nvim-treesitter.configs'.setup {	
--- List parser names ---
  ensure_installed = { "kotlin", "lua", "bash", "html", "css", "markdown" },

--- Options ---
  sync_install = false,
--auto_install = true,

-- Highlight
  highlight = {
    enable = true,
  --disable = { " " },
    additional_vim_regex_highlighting = false,
  },
}

--- Use bash highlight in zsh files ---
local ft_to_lang = require('nvim-treesitter.parsers').ft_to_lang
require('nvim-treesitter.parsers').ft_to_lang = function(ft)
    if ft == 'zsh' then
        return 'bash'
    end
    return ft_to_lang(ft)
end
