vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
  use({
    "noib3/nvim-compleet",
    config = function()
      require("compleet").setup({ sources = { lipsum = { enable = true, }, } })
    end,
    run = "cargo build --release && make install",
  })
end)







