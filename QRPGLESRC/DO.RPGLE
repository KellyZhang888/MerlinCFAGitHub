     D ARR2            S              3P 0 DIM(5) CTDATA PERRCD(1)
     D N               S              2P 0 INZ(1)
     D X               S              2P 0 INZ(1)
     d sum             s              4p 0 inz(0)
      * //****************************************************
      * DO  => DOU '1' , execute one time
     C                   DO
     C     'DOonly'      DSPLY
     C                   EVAL      N = N -1
     C                   ENDDO
     C*  DOU '1' , execute one time
     C                   DOU       '1'
     C     'DOU1'        DSPLY
     C                   EVAL      N = N -1
     C                   ENDDO
      *  DO  xx =>  FOR ForCount = 1 to xx; If not specify an index field,
      *  one is generated for internal use
     C     'DO 5'        DSPLY
     C                   EVAL      X = 1
     C                   DO        5
     C     X             DSPLY
     C                   EVAL      X = X +1
     C                   ENDDO
      *  DO  xx   yy => FOR yy = 1 to xx; If not specify an starting field,
      *  the starting value is 1. So no matter what is the initial value of X,
      *  when do, X will start from 1.
     C     'DO 5 X'      DSPLY
     C                   EVAL      X = 8
     C                   DO        5             X
     C     X             DSPLY
     C                   ENDDO
      * aa   DO  xx => FOR ForCount = aa to xx
     C     '3 DO 5'      DSPLY
     C                   EVAL      X = 1
     C     3             DO        5
     C     X             DSPLY
     C                   EVAL      X = X +1
     C                   ENDDO
      *  aa   DO  xx   yy => FOR yy = aa to xx
     C     '3 DO 5 X'    DSPLY
     C                   EVAL      X = 1
     C     3             DO        5             X
     C     X             DSPLY
     C                   ENDDO
      * Condition indicator is off, so will not execute the do operator
     C     '77off'       DSPLY
     c                   move      *off          *in77
     C   77              DO        5             n
     C     n             DSPLY
     C                   EVAL      N = N +1
     C                   ENDDO
     C*
     C     '78on'        DSPLY
     c                   eval      n =1
     c                   move      *off          *in78
     C  n783             DO        5             n
     C     n             DSPLY
     C                   EVAL      N = N +1
     C                   ENDDO
     C*
     C     'DOWWORKED'   DSPLY
     C                   EVAL      N=3
     C                   DOW       N = 3
     C     N             DSPLY
     C                   EVAL      N = N +1
     C                   ENDDO
     C*
     C     'DOWxx'       DSPLY
     C                   EVAL      N=3
     C     N             DOWEQ     3
     C     N             DSPLY
     C                   EVAL      N = N +1
     C                   ENDDO
     C*
     C     'DOUWORKED'   DSPLY
     C                   EVAL      N=1
     C                   DOU       N = 3
     C     N             DSPLY
     C                   EVAL      N = N +1
     C                   ENDDO
     C*
      * //****************************************************
      * // '0' to '1'
     C                   MOVE      '1'           *INLR
       RETURN;
** CTDATA ARR2
201
205
203
202
204