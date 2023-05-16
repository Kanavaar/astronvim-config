-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Lsp
    ["<leader>do"] = {"<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Open diagnostic"},
    ["<leader>dp"] = {"<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "Open diagnostic"},
    ["<leader>dn"] = {"<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Open diagnostic"},
    ["<leader>dd"] = {"<cmd>Telescope diagnostics<CR>", desc = "Open diagnostic"},

    -- Files
    ["<leader>fs"] = {"<cmd>w<cr>", desc = "save file"},

    -- Splits/Window
    ["<leader>w"] = {name = "window"},
    ["<leader>wh"] = {"<C-w>h", desc = "switch to left window"},
    ["<leader>wj"] = {"<C-w>j", desc = "switch to top window"},
    ["<leader>wk"] = {"<C-w>k", desc = "switch to down window"},
    ["<leader>wl"] = {"<C-w>l", desc = "switch to right window"},
    ["<leader>ws"] = {"<cmd>split<cr>", desc = "split horizontal"},
    ["<leader>wv"] = {"<cmd>vsplit<cr>", desc = "split vertical"},
    ["<leader>wc"] = {"<C-w>c", desc = "close window"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
