proc print data=cert.input13(obs=10);
run;

data results.output13;
	set cert.input13;
	Chdate=put(date1,date9.);
	num1=input(Charnum,dollar10.);
run;

proc means data=results.output13;
run;