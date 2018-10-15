DECLARE
    name string;
    geom SDO_geometry; 

BEGIN
    name:='cola_shiyan';
    geom:=SDO_geometry (2003, null, null,SDO_elem_info_array (1,1003,3),SDO_ordinate_array (-109,37,-102,40));

    INSERT INTO cola_markets VALUES(name,geom);
END;
/
