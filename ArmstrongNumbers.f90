!  AmstrongNumbers.f90 
!  Thomas George Thinapparampil 1995
!
!  FUNCTIONS:
!  AmstrongNumbers - Entry point of console application.
!  If the sum of the cube of the digits of a number is equal to the number, we call it an Amstrong Number.

!****************************************************************************
!
!  PROGRAM: AmstrongNumbers
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program AmstrongNumbers

    

    ! Variables
    BLOCK
    INTEGER I, N
    END BLOCK
    ! Body of AmstrongNumbers
    PRINT *, 'GIVE THE NUMBER UPTO WHICH YOU NEED TO PRINT AMSTRONG NUMBERS'
    READ(*,*) N
    WRITE(*,*) 'AMSTRONG NUMBERS ARE '
    DO 100 I = 1,N
        ISUM = 0
        K = I
        DO WHILE (K.NE.0) 
           J = MOD (K,10)
           ISUM = ISUM + J ** 3
           K = K/10
        END DO  
        IF ( ISUM.NE.I ) GO TO 100
         WRITE (*,30) I
30       FORMAT(1X, I5)
100 CONTINUE
    STOP
    END


