::
::  library-frontend mar file
::
/-  library, store=graph-store
=,  dejs:format
|_  front=frontend:library
++  grad  %noun
++  grow
  |%
  ++  noun  front
  --
++  grab
  |%
  ++  noun  frontend:library
  ++  json
    |=  jon=^json
    %-  frontend:library
    =<
    (front-end jon)
    |%
    ++  front-end
    %-  of
    :~
      :-  %create-library
      %-  ot
      :~  ['library-name' so]
          ['policy' so]
      ==
      ::
      :-  %remove-library
      %-  ot
      :~  ['library-name' so]
      ==
      ::
      :-  %add-book
      %-  ot
      :~  ['library-name' so]
          :-  'book'
          %-  ot
          :~  ['title' so]
              ['isbn' so]
          ==
      ==
      ::
      :-  %add-comment
      %-  ot
      :~  ['library-name' so]
          ['top' s-to-num]
          ['comment' so]     
      ==
      ::
      :-  %remove-comment
      %-  ot
      :~  ['library-name' so]
          ['index' ar-to-index]
      ==    
    ==  
    --
    ++  s-to-num
      |=  jon=^^json
      ^-  @ud
      (rash (so jon) dem)
    --
    ::  arm to parse array to index for 
    ++  ar-to-index
    |=  jon=json
    ^-  (list atom)
    %+  turn
      ((ar so):dejs:format jon)
    |=(=@ta (rash ta dem))
--