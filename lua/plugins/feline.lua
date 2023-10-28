local present, feline = pcall(require, "feline")

if not present then
  return
end

local lsp = require 'feline.providers.lsp'
local lsp_severity = vim.diagnostic.severity
local vi_mode_utils = require 'feline.providers.vi_mode'

local colors = {
  bg = '#282c34',
  fg = '#abb2bf',
  yellow = '#e0af68',
  cyan = '#56b6c2',
  darkblue = '#081633',
  green = '#98c379',
  orange = '#d19a66',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#61afef',
  red = '#e86671'
}

-- LuaFormatter off
local comps = {
  vi_mode = {
    left = {
      provider = function()
        return vi_mode_utils.get_vim_mode()
      end,
      hl = function()
        local val = {
          name = vi_mode_utils.get_mode_highlight_name(),
          fg = vi_mode_utils.get_mode_color(),
          -- fg = colors.bg
        }
        return val
      end,
      right_sep = ' '
    },
    right = {
      provider = '  Linux',
      hl = function()
        local val = {
          name = vi_mode_utils.get_mode_highlight_name(),
          fg = vi_mode_utils.get_mode_color()
        }
        return val
      end,
      left_sep = ' ',
      right_sep = ' '
    }
  },
  file = {
    info = {
      provider = {
        name = 'file_info',
        opts = {
          type = 'relative',
          file_readonly_icon = '  ',
          file_modified_icon = '',
        }
      },
      hl = {
        fg = colors.blue,
        style = 'bold'
      }
    },
    encoding = {
      provider = 'file_encoding',
      left_sep = ' ',
      hl = {
        fg = colors.violet,
        style = 'bold'
      }
    },
    type = {
      provider = 'file_type'
    },
    position = {
      provider = 'position',
      left_sep = ' ',
      hl = {
        fg = colors.cyan,
      }
    },
  },
  left_end = {
    provider = function() return '' end,
    hl = {
      fg = colors.bg,
      bg = colors.blue,
    }
  },
  scroll_bar = {
    provider = 'scroll_bar',
    left_sep = ' ',
    hl = {
      fg = colors.blue,
      style = 'bold'
    }
  },
  lsp = {
    name = {
      provider = 'lsp_client_names',
      -- left_sep = ' ',
      right_sep = ' ',
      icon = '   ',
      -- icon = '慎',
      hl = {
        fg = colors.yellow
      }
    }
  },
  git = {
    branch = {
      provider = 'git_branch',
      icon = ' ',
      left_sep = ' ',
      hl = {
        fg = colors.violet,
        style = 'bold'
      },
    },
    add = {
      provider = 'git_diff_added',
      hl = {
        fg = colors.green
      }
    },
    change = {
      provider = 'git_diff_changed',
      icon = ' ',

      hl = {
        fg = colors.orange
      }
    },
    remove = {
      provider = 'git_diff_removed',
      hl = {
        fg = colors.red
      }
    }
  }
}

local diagnostic = {
  err = {
    provider = 'diagnostic_errors',
    left_sep = ' ',
    enabled = function() return lsp.diagnostics_exist(lsp_severity.ERROR) end,
    hl = {
      fg = colors.red,
      icon = ''
    }
  },
  warn = {
    provider = 'diagnostic_warnings',
    left_sep = ' ',
    enabled = function() return lsp.diagnostics_exist(lsp_severity.WARN) end,
    hl = {
      fg = colors.yellow,
      icon = ''
    }
  },
  info = {
    provider = 'diagnostic_info',
    left_sep = ' ',
    enabled = function() return lsp.diagnostics_exist(lsp_severity.INFO) end,
    hl = {
      fg = colors.blue,
      icon = ''
    }
  },
  hint = {
    provider = 'diagnostic_hints',
    left_sep = ' ',
    enabled = function() return lsp.diagnostics_exist(lsp_severity.HINT) end,
    hl = {
      fg = colors.cyan,
      icon = ''
    }
  }
}

local components = {
  active = { {}, {}, {} },
  inactive = { {}, {}, {} },
}

table.insert(components.active[1], comps.vi_mode.left)
table.insert(components.active[1], comps.file.info)
table.insert(components.active[1], comps.git.branch)
table.insert(components.active[1], comps.git.add)
table.insert(components.active[1], comps.git.change)
table.insert(components.active[1], comps.git.remove)

table.insert(components.active[3], diagnostic.err)
table.insert(components.active[3], diagnostic.warn)
table.insert(components.active[3], diagnostic.hint)
table.insert(components.active[3], diagnostic.info)

table.insert(components.active[3], comps.lsp.name)
table.insert(components.active[3], comps.file.position)
table.insert(components.active[3], comps.scroll_bar)
table.insert(components.active[3], comps.vi_mode.right)

table.insert(components.inactive[1], comps.vi_mode.left)
table.insert(components.inactive[1], comps.file.info)

feline.setup {
  colors = { bg = colors.bg, fg = colors.fg },
  components = components,
}
