     FACCOUNT   UF A E           K DISK
     FQPRINT    O    F  132        PRINTER OFLIND(*IN90)
      * //****************************************************
     C                   EXCEPT    HEADER
     C                   EXCEPT
     C     *LOVAL        SETLL     ACCOUNT
     C                   READ(N)   ACCOUNT
     C                   DOW       NOT %EOF(ACCOUNT)
     C                   IF        *IN90 = *ON
     C                   EXCEPT    HEADER
     C                   EXCEPT
     C                   ENDIF
     C                   EXCEPT    DETAIL
     C                   READ(N)   ACCOUNT
     C                   ENDDO
     C                   EXCEPT    FOOTER
      * //****************************************************
      * // '0' to '1'
     C                   MOVE      '1'           *INLR
      *RETURN;
     OQPRINT    E            HEADER
     O                                            6 'PAGE'
     O
     O                       PAGE                10
     O                                           47 'PARTY ACCOUNT REPORT'
     O                                           65 'DATE'
     O*         E            HEADER            1
     O          E                              1
     O                                           10 'ORG CODE'
     O                                           25 'ACCOUNT NO'
     O                                           36 'CURRENCY'
     O                                           53 'PARTY NAME'
     O          E            DETAIL      1
     O                       ACORGCOD            10
     O                       ACCOUNTNUM          25
     O                       ACCURRENCY          36
     O                       ACNAME              65
     O          E            FOOTER      1
     O                                           42 '*********************'
