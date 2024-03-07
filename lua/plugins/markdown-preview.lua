return {
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      {
        "<leader>mp",
        ":MarkdownPreview",
        desc = "MarkdownPreview",
      },
      {
        "<leader>ms",
        ":MarkdownPreviewStop",
        desc = "MarkdownPreviewStop",
      },
      {
        "<leader>mt",
        ":MarkdownPreviewToggle",
        desc = "MarkdownPreviewToggle",
      },
    },

    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
