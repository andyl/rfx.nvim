" A VimL function to dynamically reload your Lua code
fun! RfxNvimWinShow()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^rfx_nvim") then package.loaded[k] = nil end end
    " then reload it
    lua require("rfx_nvim").createFloatingWindow()
endfun

fun! RfxNvimWinPrint()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^rfx_nvim") then package.loaded[k] = nil end end
    " then reload it
    lua require("rfx_nvim").printWindowSize()
endfun

fun! RfxNvimVarPrint()
    " remove old lua package definition
    lua for k in pairs(package.loaded) do if k:match("^rfx_nvim") then package.loaded[k] = nil end end
    " then reload it
    lua require("rfx_nvim").printVar()
endfun


" Global variable
" Inspect using `:echo g:rfx_nvim_value`

let g:rfx_nvim_value = 42

" Autogroup
augroup RfxNvim
    autocmd!
    " Every time the window is resized, rerun this function... 
    autocmd VimResized * :lua require("rfx_nvim").onResize()
augroup END

