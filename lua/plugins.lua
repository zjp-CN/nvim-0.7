
local setup_compleet = {
  ui = {
    menu = {
      -- Where to anchor the completion menu, either "cursor" or "match".
      anchor = "cursor",

      -- Whether to automatically show the menu every time there are
      -- completions available.
      autoshow = true,

      -- The maximum height (in rows) of the completion menu.
      max_height = nil,

      border = {
        -- Whether to add a border to the completion menu's floating window.
        enable = false,

        -- Any of the style formats listed in `:h nvim_open_win`.
        style = "single"
      },
    },

    details = {
      border = {
        -- Whether to add a border to the details's floating window.
        enable = true,

        -- Same as `ui.menu.border.style`.
        style = {
          "",
          "",
          "",
          {" ", "CompleetDetails"},
        }
      },
    },

    hint = {
      -- Whether to show completion hints.
      enable = false,
    }
  },

  completion = {
    -- Whether to enable completion while deleting characters.
    while_deleting = false,
  },

  sources = {
    lipsum = {
      enable = true,
    },
  }
}

return require("packer").startup(function()
  use({
    "noib3/nvim-compleet",
    config = function()
      require("compleet").setup(setup_compleet)
      require("set_compleet")
    end,
    run = "cargo build --release && make install",
  })
end)

