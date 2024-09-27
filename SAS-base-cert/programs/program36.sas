proc print data=cert.input36(obs=10);
run;

data cleandata36;
	set cert.input36;
	group=upcase(group);
	if group in('A','B');
run;

proc means data=work.cleandata36 median;
	class group;
	var Kilograms;
run;

data results.output36;
	set cleandata36;
	if Kilograms le 40 or Kilograms ge 200 then do;
		if group='A' then kilograms=79;
		else kilograms=89;
	end;
run;

proc means data=results.output36;
	class group;
run;