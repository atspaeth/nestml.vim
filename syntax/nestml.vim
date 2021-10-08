" Standard guard to prevent defining multiple syntaxes for the same
" file: set this variable. Vim should do this automatically but
" doesn't; at least all the included syntax files use this variable.
if exists("b:current_syntax")
    finish
else
    let b:current_syntax = "nestml"
endif

" Define all NESTML keywords.
syn keyword Statement neuron state equations parameters input output update
syn keyword Statement internals kernel recordable inline
syn keyword Statement function if else elif while for end
syn keyword Type real integer boolean string void

" Standard comment boilerplate.
syn keyword Todo contained TODO FIXME XXX
syn match Comment "#.*$" contains=Todo

" Vim will match the last available pattern, unless you tell it to
" prioritize this one! Here, I'm using that to make units highlight as
" part of numbers when used as units, or as types when used as such,
" but in other contexts will look like any old variable. Also, I'm not
" using the standard Identifier group for identifiers because they
" look weird highlighted like numbers as is default.
syn match Constant "\<\(d\|c\|m\|mu\|n\|p\|f\|a\|z\|y\|da\|h\|k\|k\|M\|G\|T\|P\|E\|Z\|Y\|\)\(m\|kg\|s\|A\|K\|mol\|cd\|V\|Ohm\|rad\|sr\|Hz\|N\|Pa\|J\|W\|C\|F\|S\|Wb\|T\|H\|lm\|lx\|Bq\|Gy\|Sv\|kat\)\>" display
syn match Type "\<\(d\|c\|m\|mu\|n\|p\|f\|a\|z\|y\|da\|h\|k\|k\|M\|G\|T\|P\|E\|Z\|Y\|\)\(m\|kg\|s\|A\|K\|mol\|cd\|V\|Ohm\|rad\|sr\|Hz\|N\|Pa\|J\|W\|C\|F\|S\|Wb\|T\|H\|lm\|lx\|Bq\|Gy\|Sv\|kat\)\>" display
syn match Name "\<\w*\>" display nextgroup=Type skipwhite

" Define literals in a pretty standard way. Note that inf can't be
" followed by a unit like real numbers can.
syn match Constant "\(+\|-\)\?\d\+\(\.\d*\)\?\(e\(+\|-\)\?\d*\)\?" display nextgroup=Constant skipwhite
syn keyword Constant inf
syn region String start='"' end='"'
syn region Comment start='"""' end='"""'

" Just to make sure commentary.vim works.
setlocal commentstring=#%s
