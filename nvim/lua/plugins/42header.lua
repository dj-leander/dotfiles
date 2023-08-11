require("42header").setup({
  length = 80, -- headers of different sizes are incompatible with each other
  margin = 5,
  default_map = true, -- default Mapping <F1> in normal mode
  auto_update = false, -- don't update header when saving
  user = "ksalazar", -- your user
  mail = "ksalazar@student.42barcelona.com", -- your mail
  -- asciiart = { "......", "......",} -- headers with different ascii arts are incompatible with each other
})
