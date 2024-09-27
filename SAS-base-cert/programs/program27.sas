proc print data=cert.input27(obs=10);
run;

proc sort data=cert.input27 out=results.output27a(where=(upcase(country)='US'));
	by state descending Postal_Code employee_ID;
run;

proc sort data=cert.input27 out=results.output27b nodupkey dupout=dupes;
	by descending Postal_Code;
run;