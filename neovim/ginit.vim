if exists('g:fvim_loaded')

    set guifont=Victor\ Mono:h16
    nnoremap <A-CR> :FVimToggleFullScreen<CR>

    highlight Cursor guifg=white guibg=#ff5555
    set guicursor=n-v-c:block-Cursor

    FVimUIPopupMenu v:false
    FVimFontAntialias v:true
    FVimFontAutohint v:true
    FVimFontHintLevel 'full'
    FVimFontLigature v:true
    FVimFontLineHeight 'default'
    FVimFontSubpixel v:true
    FVimFontNoBuiltInSymbols v:true

    FVimFontAutoSnap v:true

    FVimFontNormalWeight 400
    FVimFontBoldWeight 700

  call coc#config('suggest.completionItemKindLabels', {
                \ "text": "t",
                \ "method": ":",
                \ "function": "f",
                \ "constructor": "c",
                \ "field": ".",
                \ "variable": "v",
                \ "class": "C",
                \ "interface": "I",
                \ "module": "M",
                \ "property": "p",
                \ "unit": "U",
                \ "value": "l",
                \ "enum": "E",
                \ "keyword": "k",
                \ "snippet": "s",
                \ "color": "K",
                \ "file": "F",
                \ "reference": "r",
                \ "folder": "d",
                \ "enumMember": "m",
                \ "constant": "0",
                \ "struct": "S",
                \ "event": "e",
                \ "operator": "o",
                \ "typeParameter": "T"
                \ })
endif
