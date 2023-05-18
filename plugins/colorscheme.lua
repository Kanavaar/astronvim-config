return {
  {
    "morhetz/gruvbox",
    lazy = false,
  },
  {
    "kanavaar/edge.vim",
    lazy = false,
    init = function()
      vim.g.sonokai_style = "default"
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    init = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
          },
        },
        palettes = {
          terafox = {
            bg1 = "#080808",
            fg1 = "#F5F5F5",
          },
          carbonfox = {
            bg1 = "#080808",
            fg1 = "#F5F5F5",
          },
          nightfox = {
            bg1 = "#080808",
            fg1 = "#F5F5F5"
          },
        },
      })
    end,
  },
}
