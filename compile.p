/* compile.p */

DEF VAR vOK AS LOGICAL INITIAL FALSE NO-UNDO.

OUTPUT TO /tmp/comp.log.
PUT UNFORMATTED
  "Compiling " + SESSION:PARAMETER.

CONNECT -pf /sysC/syco/pf/all.pf.

RUN /sysC/syco/build/compilePrograms.p(INPUT SESSION:PARAMETER,
                                      OUTPUT vOK).

IF NOT vOK THEN
DO:
   PUT UNFORMATTED
     "Compile FAILED.".

   RETURN "1".
END.
ELSE
DO:
   PUT UNFORMATTED
     "Compile SUCCESS.".

   RETURN "0".
END.

OUTPUT CLOSE.
