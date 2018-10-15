CREATE TABLE sdos (
  i NUMBER,
  d VARCHAR2(50),
  g SDO_GEOMETRY
);
INSERT INTO sdos (i, d, g)
VALUES (
  1,
  'Point',
  sdo_geometry (2001, null, null, sdo_elem_info_array (1,1,1), 
    sdo_ordinate_array (10,5))
);
INSERT INTO sdos (i, d, g)
VALUES (
  2,
  'Line segment',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,1), 
    sdo_ordinate_array (10,10, 20,10))
);
INSERT INTO sdos (i, d, g)
VALUES (
  3,
  'Arc segment',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,2), 
    sdo_ordinate_array (10,15, 15,20, 20,15))
);
INSERT INTO sdos (i, d, g)
VALUES (
  4,
  'Line string',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,1), 
    sdo_ordinate_array (10,25, 20,30, 25,25, 30,30))
);
INSERT INTO sdos (i, d, g)
VALUES (
  5,
  'Arc string',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,2), 
    sdo_ordinate_array (10,35, 15,40, 20,35, 25,30, 30,35))
);
INSERT INTO sdos (i, d, g)
VALUES (
  6,
  'Compound line string',
  sdo_geometry (2002, null, null, 
    sdo_elem_info_array (1,4,3, 1,2,1, 3,2,2, 7,2,1), 
    sdo_ordinate_array (10,45, 20,45, 23,48, 20,51, 10,51))
);
INSERT INTO sdos (i, d, g)
VALUES (
  7,
  'Closed line string',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,1), 
    sdo_ordinate_array (10,55, 15,55, 20,60, 10,60, 10,55))
);
INSERT INTO sdos (i, d, g)
VALUES (
  8,
  'Closed arc string',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,2), 
    sdo_ordinate_array (15,65, 10,68, 15,70, 20,68, 15,65))
);
INSERT INTO sdos (i, d, g)
VALUES (
  9,
  'Closed mixed line',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,4,2, 1,2,1, 7,2,2), 
    sdo_ordinate_array (10,78, 10,75, 20,75, 20,78, 15,80, 10,78))
);
INSERT INTO sdos (i, d, g)
VALUES (
  10,
  'Self-crossing line',
  sdo_geometry (2002, null, null, sdo_elem_info_array (1,2,1), 
    sdo_ordinate_array (10,85, 20,90, 20,85, 10,90, 10,85))
);
INSERT INTO sdos (i, d, g)
VALUES (
  11,
  'Polygon',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,1), 
    sdo_ordinate_array (10,105, 15,105, 20,110, 10,110, 10,105))
);
INSERT INTO sdos (i, d, g)
VALUES (
  12,
  'Arc polygon',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,2), 
    sdo_ordinate_array (15,115, 20,118, 15,120, 10,118, 15,115))
);
INSERT INTO sdos (i, d, g)
VALUES (
  13,
  'Compound polygon',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1005,2, 1,2,1, 7,2,2), 
    sdo_ordinate_array (10,128, 10,125, 20,125, 20,128, 15,130, 10,128))
);
INSERT INTO sdos (i, d, g)
VALUES (
  14,
  'Rectangle',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,3), 
    sdo_ordinate_array (10,135, 20,140))
);
INSERT INTO sdos (i, d, g)
VALUES (
  15,
  'Circle',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,4), 
    sdo_ordinate_array (15,145, 10,150, 20,150))
);
INSERT INTO sdos (i, d, g)
VALUES (
  16,
  'Point cluster',
  sdo_geometry (2005, null, null, sdo_elem_info_array (1,1,3), 
    sdo_ordinate_array (50,5, 55,7, 60,5))
);
INSERT INTO sdos (i, d, g)
VALUES (
  17,
  'Multipoint',
  sdo_geometry (2005, null, null, sdo_elem_info_array (1,1,1, 3,1,1, 5,1,1), 
    sdo_ordinate_array (65,5, 70,7, 75,5))
);
INSERT INTO sdos (i, d, g)
VALUES (
  18,
  'Multiline',
  sdo_geometry (2006, null, null, sdo_elem_info_array (1,2,1, 5,2,1), 
    sdo_ordinate_array (50,15, 55,15, 60,15, 65,15))
);
INSERT INTO sdos (i, d, g)
VALUES (
  19,
  'Multiline - crossing',
  sdo_geometry (2006, null, null, sdo_elem_info_array (1,2,1, 5,2,1), 
    sdo_ordinate_array (50,22, 60,22, 55,20, 55,25))
);
INSERT INTO sdos (i, d, g)
VALUES (
  20,
  'Multiarc',
  sdo_geometry (2006, null, null, sdo_elem_info_array (1,2,2, 7,2,2), 
    sdo_ordinate_array (50,35, 55,40, 60,35, 65,35, 70,30, 75,35))
);
INSERT INTO sdos (i, d, g)
VALUES (
  21,
  'Multiline - closed',
  sdo_geometry (2006, null, null, sdo_elem_info_array (1,2,1, 9,2,1), 
    sdo_ordinate_array (50,55, 50,60, 55,58, 50,55, 56,58, 60,55, 60,60, 56,58))
);
INSERT INTO sdos (i, d, g)
VALUES (
  22,
  'Multiarc - touching',
  sdo_geometry (2006, null, null, sdo_elem_info_array (1,2,2, 7,2,2), 
    sdo_ordinate_array (50,65, 50,70, 55,68, 55,68, 60,65, 60,70))
);
INSERT INTO sdos (i, d, g)
VALUES (
  23,
  'Multipolygon - disjoint',
  sdo_geometry (2007, null, null, sdo_elem_info_array (1,1003,1, 11,1003,3), 
    sdo_ordinate_array (50,105, 55,105, 60,110, 50,110, 50,105, 62,108, 65,112))
);
INSERT INTO sdos (i, d, g)
VALUES (
  24,
  'Multipolygon - touching',
  sdo_geometry (2007, null, null, sdo_elem_info_array (1,1003,3, 5,1003,3), 
    sdo_ordinate_array (50,115, 55,120, 55,120, 58,122))
);
INSERT INTO sdos (i, d, g)
VALUES (
  25,
  'Multipolygon - tangent * INVALID 13351',
  sdo_geometry (2007, null, null, sdo_elem_info_array (1,1003,3, 5,1003,3), 
    sdo_ordinate_array (50,125, 55,130, 55,128, 60,132))
);
INSERT INTO sdos (i, d, g)
VALUES (
  26,
  'Multipolygon - multi-touch',
  sdo_geometry (2007, null, null, sdo_elem_info_array (1,1003,1, 17,1003,1), 
    sdo_ordinate_array (50,95, 55,95, 53,96, 55,97, 53,98, 55,99, 50,99, 50,95, 
      55,100, 55,95, 60,95, 60,100, 55,100))
);
INSERT INTO sdos (i, d, g)
VALUES (
  27,
  'Polygon with void',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,3, 5,2003,3), 
    sdo_ordinate_array (50,135, 60,140, 51,136, 59,139))
);
INSERT INTO sdos (i, d, g)
VALUES (
  28,
  'Polygon with void - reverse',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,2003,3, 5,1003,3), 
    sdo_ordinate_array (51,146, 59,149, 50,145, 60,150))
);
INSERT INTO sdos (i, d, g)
VALUES (
  29,
  'Crescent (straight lines) * INVALID 13349',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,1), 
    sdo_ordinate_array (10,175, 10,165, 20,165, 15,170, 25,170, 20,165, 
      30,165, 30,175, 10,175))
);
INSERT INTO sdos (i, d, g)
VALUES (
  30,
  'Crescent (arcs) * INVALID 13349',
  sdo_geometry (2003, null, null, sdo_elem_info_array (1,1003,2), 
    sdo_ordinate_array (14,180, 10,184, 14,188, 18,184, 14,180, 16,182, 
      14,184, 12,182, 14,180))
);
INSERT INTO sdos (i, d, g)
VALUES (
  31,
  'Heterogeneous collection',
  sdo_geometry (2004, null, null, sdo_elem_info_array (1,1,1, 3,2,1, 7,1003,1), 
    sdo_ordinate_array (10,5, 10,10, 20,10, 10,105, 15,105, 20,110, 10,110,
      10,105))
);
INSERT INTO sdos (i, d, g)
VALUES (
  32,
  'Polygon+void+island touch',
  sdo_geometry (2007, null, null, 
    sdo_elem_info_array (1,1003,1, 11,2003,1, 31,1003,1), 
    sdo_ordinate_array (50,168, 50,160, 55,160, 55,168, 50,168,  51,167,
      54,167, 54,161, 51,161, 51,162, 52,163, 51,164, 51,165, 51,166, 51,167, 
      52,166, 52,162, 53,162, 53,166, 52,166))
);
COMMIT;
SELECT i, d, SDO_GEOM.VALIDATE_GEOMETRY_WITH_CONTEXT (g, 0.5) FROM sdos;
