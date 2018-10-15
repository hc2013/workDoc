select d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_stored=1) as a,(select avg(duration) as b_duration from index002 where ftype_stored=0) as b) as d;
