SCREEN 12
 
RANDOMIZE TIMER
DO
    LINE (0, 0)-(639, 479), 15, BF
 
    FOR A = 1 TO 640 STEP 1
        Number = INT(RND * 40)
        IF Number = 1 THEN LINE (A, 0)-(A + INT(RND * 4), 479), 0, BF
        IF Number = 1 THEN LINE (0, A)-(639, A + INT(RND * 4)), 0, BF
    NEXT A
 
    FOR B = 1 TO 8
        X = INT(RND * 640): Y = INT(RND * 480)
        IF POINT(X, Y) = 15 THEN PAINT (X, Y), 12, 0
        X = INT(RND * 640): Y = INT(RND * 480)
        IF POINT(X, Y) = 15 THEN PAINT (X, Y), 1, 0
        X = INT(RND * 640): Y = INT(RND * 480)
        IF POINT(X, Y) = 15 THEN PAINT (X, Y), 14, 0
    NEXT B
 
    FOR Espera = 1 TO 400000
        KEY$ = INKEY$
        IF KEY$ = CHR$(27) THEN END
        IF KEY$ = CHR$(13) OR KEY$ = CHR$(32) THEN EXIT FOR
    NEXT Espera
 
   DO: LOOP UNTIL INKEY$ = ""
 
LOOP
