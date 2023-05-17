return {
  "sunjon/Shade.nvim",
  lazy = false,
  config = function()
    require("shade").setup({
      overlay_opacity = 50,
      opacity_step = 1,
    })
  end,
}
