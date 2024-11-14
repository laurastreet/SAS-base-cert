data results.output04;
	set cert.input04;
	VAR3=round(VAR1)*round(VAR2);
	VAR20=sum(of VAR12-VAR19);
run;