select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_stored=1) as a,(select avg(duration) as b_duration from index002 where ftype_stored=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_stored') as colName;	

select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_tokenized=1) as a,(select avg(duration) as b_duration from index002 where ftype_tokenized=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_tokenized') as colName;


select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_storeTermVectors=1) as a,(select avg(duration) as b_duration from index002 where ftype_storeTermVectors=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_storeTermVectors') as colName;

select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_storeTermVectorOffsets=1) as a,(select avg(duration) as b_duration from index002 where ftype_storeTermVectorOffsets=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_storeTermVectorOffsets') as colName;

select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_storeTermVectorPositions=1) as a,(select avg(duration) as b_duration from index002 where ftype_storeTermVectorPositions=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_storeTermVectorPositions') as colName;

select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_storeTermVectorPayloads=1) as a,(select avg(duration) as b_duration from index002 where ftype_storeTermVectorPayloads=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_storeTermVectorPayloads') as colName;


select  colName.COLUMN_NAME,d.a_duration,d.b_duration,dis,dis/(d.b_duration)
	from
		(select a.a_duration as a_duration,b.b_duration as b_duration,(a.a_duration-b.b_duration) as dis
		from (select avg(duration) as a_duration from index002 where ftype_omitNorms=1) as a,(select avg(duration) as b_duration from index002 where ftype_omitNorms=0) as b) as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_omitNorms') as colName;


select  colName.COLUMN_NAME,d.NONE_duration,d.DOCS_duration,d.DF_duration,d.DFP_duration,d.DFPO_duration
	from
		(select NONE.NONE_duration as NONE_duration,DOCS.DOCS_duration as DOCS_duration,DF.DF_duration as DF_duration,DFP.DFP_duration as DFP_duration,DFPO.DFPO_duration as DFPO_duration
		from (select avg(duration) as NONE_duration from index002 where ftype_IndexOptions='NONE') as NONE,
		    (select avg(duration) as DOCS_duration from index002 where ftype_IndexOptions='DOCS') as DOCS,
		    (select avg(duration) as DF_duration from index002 where ftype_IndexOptions='DOCS_AND_FREQS') as DF,
		    (select avg(duration) as DFP_duration from index002 where ftype_IndexOptions='DOCS_AND_FREQS_AND_POSITIONS') as DFP,	
		    (select avg(duration) as DFPO_duration from index002 where ftype_IndexOptions='DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS') as DFPO
		)as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_IndexOptions') as colName;


select  colName.COLUMN_NAME,d.INTT_duration,d.LONGT_duration,d.FLOATT_duration,d.DOUBLET_duration
	from
		(select INTT.INTT_duration as INTT_duration,LONGT.LONGT_duration as LONGT_duration,FLOATT.FLOATT_duration as FLOATT_duration,DOUBLET.DOUBLET_duration as DOUBLET_duration
		from (select avg(duration) as INTT_duration from index002 where ftype_numericType='INT') as INTT,
		    (select avg(duration) as LONGT_duration from index002 where ftype_numericType='LONG') as LONGT,
		    (select avg(duration) as FLOATT_duration from index002 where ftype_numericType='FLOAT') as FLOATT,
		    (select avg(duration) as DOUBLET_duration from index002 where ftype_numericType='DOUBLE') as DOUBLET	
		)as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_numericType') as colName;



select  colName.COLUMN_NAME,d.NONE_duration,d.NUMERIC_duration,d.BINARY_duration,d.SORTED_duration,d.SORTED_NUMERIC_duration,d.SORTED_SET_duration
	from
		(select NONE.NONE_duration as NONE_duration,NUMERICT.NUMERIC_duration as NUMERIC_duration,BIN.BINARY_duration as BINARY_duration,SORTED.SORTED_duration as SORTED_duration,SORTED_NUMERIC.SORTED_NUMERIC_duration as SORTED_NUMERIC_duration,SORTED_SET.SORTED_SET_duration as SORTED_SET_duration
		from (select avg(duration) as NUMERIC_duration from index002 where ftype_docValuesType='NUMERIC') as NUMERICT,
		    (select avg(duration) as NONE_duration from index002 where ftype_docValuesType='NONE') as NONE,
		    (select avg(duration) as BINARY_duration from index002 where ftype_docValuesType='BINARY') as BIN,
		    (select avg(duration) as SORTED_duration from index002 where ftype_docValuesType='SORTED') as SORTED,
		    (select avg(duration) as SORTED_NUMERIC_duration from index002 where ftype_docValuesType='SORTED_NUMERIC') as SORTED_NUMERIC,
		    (select avg(duration) as SORTED_SET_duration from index002 where ftype_docValuesType='SORTED_SET') as SORTED_SET	
		)as d,
		(select * from(select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME = 'index002') as colNames where colNames.COLUMN_NAME='ftype_docValuesType') as colName;












		
