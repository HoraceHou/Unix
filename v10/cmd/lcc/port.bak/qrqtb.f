      SUBROUTINE QRQTB(M, N, QR, ALFA, PIVOT, NB, B, X)
      INTEGER M, N, NB
      INTEGER PIVOT(N)
      REAL QR(M, N), ALFA(N), B(M, NB), X(N, NB)
      COMMON /CSTAK/ DS
      DOUBLE PRECISION DS(500)
      INTEGER ISTKGT, MIN0, I, J, JB, IS(1000)
      INTEGER IZ
      REAL SDOT, GAMMA, RS(1000), WS(1000)
      LOGICAL LS(1000)
      INTEGER TEMP, TEMP1
      EQUIVALENCE (DS(1), WS(1), RS(1), IS(1), LS(1))
C TO SOLVE R*X = Q*B.
C MNEMONIC - QR Q*B AND BACK-SOLVE.
C INPUT -
C   M     - THE NUMBER OF ROWS IN THE MATRIX.
C   N     - THE NUMBER OF COLUMNS IN THE MATRIX.
C   QR    - THE QR FACTORIZATION OF A MATRIX, AS DESCRIBED IN  QRD.
C   ALFA  - THE DIAGONAL OF R, AS DESCRIBED IN  QRD.
C   PIVOT - THE PIVOTING ARRAY, AS DESCRIBED IN  QRD.
C   NB    - THE NUMBER OF RIGHT-HAND-SIDES.
C   B     - THE RIGHT-HAND-SIDES.
C OUTPUT -
C   B - HAS BEEN CLOBBERED.
C   X - THE SOLUTION VECTORS.
C SCRATCH SPACE ALLOCATED - N*MU WORDS.
C ERROR STATES -
C   1 - N.LT.1.
C   2 - M.LT.N.
C   3 - NB.LT.1.
C   4 - ALFA(J)=0.
C   5 - QR(J,J)=0.
C   6 - PIVOT(I) NOT ONE OF 1,...,N.
C THE PORT LIBRARY STACK AND ITS ALIASES.
C DEFINE Z(J) WS(IZ-1+J)
C CHECK THE INPUT FOR ERRORS.
C/6S
C     IF (N .LT. 1) CALL SETERR(15H QRQTB - N.LT.1, 15, 1, 2)
C     IF (M .LT. N) CALL SETERR(15H QRQTB - M.LT.N, 15, 2, 2)
C     IF (NB .LT. 1) CALL SETERR(16H QRQTB - NB.LT.1, 16, 3, 2)
C/7S
      IF (N .LT. 1) CALL SETERR(' QRQTB - N.LT.1', 15, 1, 2)
      IF (M .LT. N) CALL SETERR(' QRQTB - M.LT.N', 15, 2, 2)
      IF (NB .LT. 1) CALL SETERR(' QRQTB - NB.LT.1', 16, 3, 2)
C/
      DO  1 J = 1, N
C/6S
C        IF (ALFA(J) .EQ. 0.) CALL SETERR(18H QRQTB - ALFA(J)=0, 18, 4
C    1      , 2)
C/7S
         IF (ALFA(J) .EQ. 0.) CALL SETERR(' QRQTB - ALFA(J)=0', 18, 4
     1      , 2)
C/
   1     CONTINUE
      TEMP = MIN0(M, N)
      DO  2 J = 1, TEMP
C/6S
C        IF (QR(J, J) .EQ. 0.) CALL SETERR(18H QRQTB - QR(J,J)=0, 18, 5,
C    1      2)
C/7S
         IF (QR(J, J) .EQ. 0.) CALL SETERR(' QRQTB - QR(J,J)=0', 18, 5,
     1      2)
C/
   2     CONTINUE
      DO  3 I = 1, N
C/6S
C        IF (PIVOT(I) .LT. 1 .OR. PIVOT(I) .GT. N) CALL SETERR(
C    1      36H QRQTB - PIVOT(I) NOT ONE OF 1,...,N, 36, 6, 2)
C/7S
         IF (PIVOT(I) .LT. 1 .OR. PIVOT(I) .GT. N) CALL SETERR(
     1      ' QRQTB - PIVOT(I) NOT ONE OF 1,...,N', 36, 6, 2)
C/
   3     CONTINUE
C FORM Q*B.
C MULTIPLY ALL THE VECTORS.
      DO  6 JB = 1, NB
C APPLY THE J-TH TRANSFORMATION.
         TEMP = MIN0(M, N)
         DO  5 J = 1, TEMP
            GAMMA = SDOT(M-J+1, QR(J, J), 1, B(J, JB), 1)/(ALFA(J)*QR(J,
     1         J))
            DO  4 I = J, M
               B(I, JB) = B(I, JB)+GAMMA*QR(I, J)
   4           CONTINUE
   5        CONTINUE
   6     CONTINUE
C SOLVE R*X = Q*B.
      IZ = ISTKGT(N, 3)
C DO ALL THE RIGHT-HAND-SIDES.
      DO  11 JB = 1, NB
         TEMP = IZ+N
         WS(TEMP-1) = B(N, JB)/ALFA(N)
         I = N-1
            GOTO  8
   7        I = I-1
   8        IF (I .LT. 1) GOTO  9
            TEMP = IZ-1+I
            TEMP1 = IZ+I
            WS(TEMP) = (-(SDOT(N-I, QR(I, I+1), M, WS(TEMP1), 1)-B(I,
     1         JB)))/ALFA(I)
            GOTO  7
   9     DO  10 I = 1, N
            TEMP1 = PIVOT(I)
            TEMP = IZ+I
            X(TEMP1, JB) = WS(TEMP-1)
  10        CONTINUE
  11     CONTINUE
      CALL ISTKRL(1)
      RETURN
      END