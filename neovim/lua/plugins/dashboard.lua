return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
 ______         ___   ___              ____      __ 
|      |.--.--.'  _|.'  _|.-----.----.|_   | .--|  |
|  --  ||_   _|   _||   _||  _  |   _| _|  |_|  _  |
|______||__.__|__|  |__|  |___  |__|  |______|_____|
                          |_____|

     "Sei der Hacker, der du sein solltest"

        [https://github.com/0xffgr1d]
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Datei Suchen", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "Neue Datei", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Text Suchen", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Zuletzt verwendete Dateien", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Konfig", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Sitzung wiederherstellen", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Verlassen", action = ":qa" },
        },
      },
    },
  },
}
