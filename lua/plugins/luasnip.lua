return {
  "L3MON4D3/LuaSnip",
  -- skip jsregexp C dependency entirely to avoid submodule errors
  build = "echo 'skipping jsregexp build'",
  opts = {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  },
}
