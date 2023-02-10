SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE totalCost(s_id IN records.sid%TYPE,SUMTOTAL OUT records.cost%TYPE) IS

BEGIN
	SUMTOTAL:=0;
	FOR R IN (SELECT COST FROM records WHERE sid=s_id) LOOP
	SUMTOTAL:=SUMTOTAL+R.COST;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(SUMTOTAL);
END totalCost;
/