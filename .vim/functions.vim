" ******************************************************************************
" ToggleColor
" ******************************************************************************

function! ToggleColor()
  if (g:colors_name == "vividchalk")
    color summerfruit256
  else
    color vividchalk
  endif

  highlight cursorline cterm=bold
endfunc