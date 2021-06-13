local function createFloatingWindow()
    local stats = vim.api.nvim_list_uis()[1]
    local width = stats.width;
    local height = stats.height;

    print("Window size", width, height)

    local bufh = vim.api.nvim_create_buf(false, true)
    local winId = vim.api.nvim_open_win(bufh, true, {
        relative="editor",
        width = width - 8,
        height = height - 8,
        col = 4,
        row = 4,
    })
end

local function printWindowSize()
  local stats = vim.api.nvim_list_uis()[1]
  local width = stats.width;
  local height = stats.height;
  print("Window size", width, height)
end

local function printVar()
  local myvar = vim.g["rfx_nvim_value"]
  print("Global Var: ", myvar)
end

local function onResize()
    local stats = vim.api.nvim_list_uis()[1]
    local width = stats.width;
    local height = stats.height;

    print("Window size", width, height)
end

return {
    createFloatingWindow = createFloatingWindow,
    printWindowSize = printWindowSize,
    onResize = onResize, 
    printVar = printVar
}
