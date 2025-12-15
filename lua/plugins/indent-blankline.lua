local hooks_status, hooks = pcall(require, 'ibl.hooks')
if not hooks_status then
  return
end

hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)

local ibl_status, ibl = pcall(require, 'ibl')
if not ibl_status then
  return
end

ibl.setup({
  indent = { char = '┆' }
})
