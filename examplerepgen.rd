[*********************************************************************
 Tinker Federal Credit Union
 Type:              SC
 Program Name:      TKR.BN.FISERV.CARDS.SC
 Written By:        BRAD NEW
 Date:              11/17/2016
 Requested By:      CHARLIE WYNN / BRIAN KOEHN
 Department:        ISD / ISPD
 Change Manager #:  9724
 Frequency:         DEMAND SYMCONNECT
 Run Requirements:
 Input:
 Output:

 **********************************************************************
 Description : REPGEN TO BE CALLED TO PASS CARD INFORMATION IN JSON FORMAT
               TO HOME BRANCH FOR TRAVEL ALERTS.
 **********************************************************************
 Modification History:

 Date        Programmer        Description
 ----------  ---------------   ----------------------------------------
 **********************************************************************]
SUBROUTINE
[test]


TARGET = ACCOUNT
//test
DEFINE
 #INCLUDE "TKR.RUNTIME.DEF"
 #INCLUDE "RD.GETDATA.DEF"
 #INCLUDE "TKR.CARDS.DEF"
END [DEFINE]


SETUP
 runFILENAME = "TKR.BN.FISERV.CARDS.SC"
 CALL LASTRUNTIME
 CALL INITVAR

 ACCT = @ENVPARAMCHAR2
 CARDTYPELIST = @ENVPARAMCHAR3
END [SETUP]


PRINT TITLE = ""
 CALL COLLECTCARDINFO

 CALL JSONIFY
END [PRINT]

#INCLUDE "TKR.CARDS.PRO"
#INCLUDE "TKR.RUNTIME.PRO"

[LAST RUNTIME: 10/26/2017 11:49 by 0807 USER-DEFINED 7]
