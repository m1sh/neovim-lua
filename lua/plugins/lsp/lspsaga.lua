local saga_status, saga = pcall(require, 'lspsaga')
if not saga_status then
  return
end

saga.init_lsp_saga({
  move_in_saga = { prev = '<s-tab>', next = '<tab>' },
  finder_action_keys = { open = '<cr>' },
  definition_action_keys = { edit = '<cr>' }
})
