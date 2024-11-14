proc print data=cert.input48(obs=10);
run;

proc contents data=cert.input48;
run;


data groups;
	set cert.input48(rename=(y=Chary));
	Chary=strip(Chary);
	if upcase(cvar) in ('A','B','C','D','E','F','G') then Group=1;
	else if upcase(cvar) in ('H','I','J','K','L','M','N') then Group=2;
	else Group=3;
	y=input(Chary,8.3);
run;

/* Calculate the average of X and Y by Group */
/* What is the average of X and Y for Group 2? */

proc means data=groups maxdec=2;
	by group;
run;



