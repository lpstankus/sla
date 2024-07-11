local M = {}

---@class sla.TermColors
---@field black   string
---@field red     string
---@field green   string
---@field yellow  string
---@field blue    string
---@field magenta string
---@field cyan    string
---@field white   string

---@class sla.ColorMap
---@field bg0  string
---@field bg1  string
---@field bg2  string
---@field bg3  string
---@field fg0  string
---@field fg1  string
---@field fg2  string
---@field gra0 string
---@field gra1 string
---@field blu0 string
---@field gre0 string
---@field gre1 string
---@field gre2 string
---@field red0 string
---@field red1 string
---@field red2 string
---@field id   string
---@field err  string
---@field war  string
---@field suc  string
---@field hin  string
---@field oka  string
---@field add  string
---@field mod  string
---@field rem  string
---@field unt  string
---@field term sla.TermColors

---@return sla.ColorMap
function M.get()
  return {
    bg0  = "#00161D",
    bg1  = "#052029",
    bg2  = "#122B34",
    bg3  = "#031B23",
    fg0  = "#D1B896",
    fg1  = "#F1EAE0",
    fg2  = "#E4D5C2",
    gra0 = "#667377",
    gra1 = "#33454A",
    blu0 = "#7AA6FF",
    gre0 = "#8CDE94",
    gre1 = "#2EC09C",
    gre2 = "#7AD0C6",
    red0 = "#C03B3B",
    red1 = "#BF616A",
    red2 = "#D0675B",

    id  = "#BDD3FF",
    err = "#AA0000",
    war = "#FFCC66",
    suc = "#A0DD80",
    hin = "#FFF0D0",
    oka = "#A0DD80",

    add = "#B8CC52",
    mod = "#59C2FF",
    rem = "#FF3333",
    unt = "#FFCC66",

    term = {
      black   = "#131415",
      red     = "#C03B3B",
      green   = "#2EC09C",
      yellow  = "#E7C547",
      blue    = "#7AA6FF",
      magenta = "#D4BFFF",
      cyan    = "#7AD0C6",
      white   = "#E8DCCB",
    }
  }
end

return M
