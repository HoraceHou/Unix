      SUBROUTINE TYPE
      LOGICAL ERR, SYSERR, ARDECL, ABORT
      INTEGER STMT, PSTMT, DSA, PDSA
      COMMON /DETECT/ ERR, SYSERR, ABORT
      COMMON /INPUT/ NSTMT, PSTMT, STMT(1327)
      COMMON /CTABL/ LDSA, PDSA, DSA(5000)
C
C     PROCESSES TYPE STMT BY FINDING IDS OR ARRAY DECLS
C     THEY ARE ENTERED INTO SYMBOL TABLE AND TYPED EXPLICITLY
C     NO USAGE IS SET.
C
   10 IF (.NOT.ARDECL(K2,INDX)) GO TO 20
      IF (SYSERR) GO TO 30
      L = IGATT1(INDX,6)
      IF(L.EQ.1) CALL ERROR1(63
     1H WARNING - SHOULD TYPE ADJUSTABLE DIMENSION VARIABLE BEFORE USE
     2, 63)
      IF (K2.EQ.NSTMT) GO TO 30
      IF (STMT(K2).EQ.68 .AND. K2+1.NE.NSTMT) GO TO 40
   20 CALL ERROR1(15H ILLEGAL SYNTAX, 15)
   30 RETURN
   40 PSTMT = K2 + 1
      GO TO 10
      END