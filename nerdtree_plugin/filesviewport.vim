nnoremap <F5> :w<CR>:so %<CR>

"call NERDTreeAddKeyMap({
"  \ 'key': '<CR>',
"  \ 'callback': 'NERDTreeFilesViewportEdit',
"  \ 'quickhelpText': 'edit in filesviewport',
"  \ 'scope': 'FileNode' })
"
"call NERDTreeAddKeyMap({ 'key': "<CR>", 'scope': "DirNode", 'callback': s."activateDirNode" })
"call NERDTreeAddKeyMap({ 'key': "<CR>", 'scope': "Bookmark", 'callback': s."activateBookmark" })
"call NERDTreeAddKeyMap({ 'key': "<CR>", 'scope': "all", 'callback': s."activateAll" })
"
"function! s:activateDirNode(node)
"    call a:node.activate({'reuse': 1})
"endfunction
"
"call NERDTreeAddKeyMap({
"  \ 'key': '<CR>',
"  \ 'callback': 'NERDTreeDirFoo',
"  \ 'quickhelpText': 'dir foo',
"  \ 'scope': 'DirNode' })
"
"call NERDTreeAddKeyMap({
"  \ 'key': '<C-CR>',
"  \ 'callback': 'NERDTreeFilesViewportSplit',
"  \ 'quickhelpText': 'split in filesviewport',
"  \ 'scope': 'FileNode' })

function! NERDTreeFilesViewportEdit(filenode)
  echo "FilesViewportEdit" a:filenode.path.str()
  exe ":FilesViewportEdit" a:filenode.path.str()
endfunction

function! NERDTreeDirFoo(dirnode)
  echo "dirnode" a:dirnode.path.str()
endfunction

function! NERDTreeFilesViewportSplit(filenode)
  echo "FilesViewportSplit" a:filenode.path.str()
  exe ":FilesViewportSplit" a:filenode.path.str()
endfunction

echo 'LOADED'
