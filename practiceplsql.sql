DECLARE
  Y number(3):=100;
BEGIN
  IF(Y>50) THEN
  dbms_output.put_line('Y is greater than 50');
  ELSE
  dbms_output.put_line('Y is smaller than 50');
  ENDIF;
END;
/

/*IF THEN ELSE Statements:*/

DECLARE
  PER NUMBER(3):=76;
BEGIN
  IF(per>=75)THEN
  dbms_ouput.put_line('Distinction');
  ELSIF (per>=60) THEN
  dbms_ouput.put_line('First class');
