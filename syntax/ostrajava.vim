" Syntax file for OSTRAJava language (https://bitbucket.org/tkohout/ostrajava)

if exists('b:current_syntax')
	finish
endif

syn keyword ostrajavaLanguageKeywords banik fajront tryda toz kaj kajtez ci aj boinak pyco rubat zdybat dlabat fagan od joch forant zrob davaj
syn keyword ostrajavaLanguageTypes cyslo bul chachar cyslo_desetinne
syn keyword ostrajavaLanguageSpecialMarkers fajne nyt chuj
syn keyword ostrajavaLanguageSTDClasses Dryst Bazmek Citac Konzola Bafr

" cyslo
syn match ostrajavaLanguageNumber '\d\+' display
syn match ostrajavaLanguageNumber '[-+]\d\+' display

" cyslo_desetinne
syn match ostrajavaLanguageNumber '\d\+\.\d*' display
syn match ostrajavaLanguageNumber '[-+]\d\+\.\d*' display

" Dryst
syn region ostrajavaLanguageString start='"' end='"'
syn region ostrajavaLanguageString start='\'' end='\''

" comments
syn match ostrajavaLanguageComment '\v//.*$'
syn region ostrajavaLanguageComment start='/\*' end='\*/'

" Syntax coloring
let b:current_syntax='ostrajava'

hi def link ostrajavaLanguageKeywords       Statement
hi def link ostrajavaLanguageTypes          Type
hi def link ostrajavaLanguageSpecialMarkers Boolean
hi def link ostrajavaLanguageSTDClasses     PreProc
hi def link ostrajavaLanguageNumber         Number
hi def link ostrajavaLanguageString         String
hi def link ostrajavaLanguageComment        Comment
