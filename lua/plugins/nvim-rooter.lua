local rooter_status, rooter = pcall(require, 'nvim-rooter')
if not rooter_status then
  return
end

rooter.setup {
  rooter_patterns = { '.git', '.hg', '.svn' },
  trigger_patterns = { '*' },
  manual = false
}
