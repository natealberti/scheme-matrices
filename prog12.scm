// author: nate alberti
// date: november 2021
// purpose: these are some functions which traverse and manipulate
// matrices (implemented via lists) in scheme


//HELPER FUNCTION TO GET COLUMNS
(define (getColumnsHelper List)
    (if (null? List)
        0
        (+ 1 (getColumns (cdr List)))
     )
)


(define (getColumns Matrix)
    (if (null? Matrix)
        0
        (getColumnsHelper (car Matrix))
     )
)


----------------------------------------------------


//HELPER FUNCTION TO GET CELL
(define (getAtColumn List Column)
    (if (null? List)
        ()
        (if (= Column 1)
            (car List)
            (getAtColumn (cdr List) (- Column 1))
         )
     )
)
  
  
(define (getCell Matrix Row Column)
    (if (null? Matrix)
        ()
        (if (= Row 1)
            (getAtColumn (car Matrix) Column)
            (getCell (cdr Matrix) (- Row 1) Column)
         )
     )
)


----------------------------------------------------


//HELPER FUNCTION TO SET CELL
(define (replaceList List Column Item)
    (if (null? List)
        ()
        (if (= Column 1)
            (cons Item (cdr List))
            (cons (car List) (replaceList (cdr List) (- Column 1) Item))
         )
        )   
)


(define (setCell Matrix Row Column Item)
    (if (null? Matrix)
        ()
        (if (= Row 1)
            (cons (replaceList (car Matrix) Column Item) (cdr Matrix))
            (cons (car Matrix) (setCell (cdr Matrix) (- Row 1) Column Item))
         )
     )
)
