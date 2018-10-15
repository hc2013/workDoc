--create table countries2(cid number,name varchar(64),part1 SDO_GEOMETRY,part2 varchar(64));
--drop table countries2;
---delete from countries2;

-----3D point
INSERT INTO countries2 VALUES(9,'Hotland',SDO_GEOMETRY(3001,NULL,SDO_POINT_TYPE(12, 14, 18),NULL,NULL),NULL);

------ 2D Point cluster
INSERT INTO countries2 VALUES(10,'Laowo',SDO_GEOMETRY(2005,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1,3),sdo_ordinate_array(12,14,14,16,18,19)),NULL);

------ 3D Point Cluster
INSERT INTO countries2 VALUES(11,'YueNan',SDO_GEOMETRY(3005,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1,3),sdo_ordinate_array(11,12,14,13,14,15,16,18,19)),NULL);

------2D Strait Line
INSERT INTO countries2 VALUES(12,'JianPuzhai',SDO_GEOMETRY(2002,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,2,1),sdo_ordinate_array(11,12,14,15)),NULL);

------2D Curve 1 segment
INSERT INTO countries2 VALUES(13,'ChaoXian',SDO_GEOMETRY(2002,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,2,2),sdo_ordinate_array(11,12,12,15,15,16)),NULL);

------2D Curve 2 segment
INSERT INTO countries2 VALUES(14,'HanGuo',SDO_GEOMETRY(2002,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,2,2),sdo_ordinate_array(11,12,12,15,15,16,17,18,16,20,21,21,24,25)),NULL);

------Coumpound LineString(Straight Line+Curve Line)
INSERT INTO countries2 values(15,'YiLang',SDO_GEOMETRY(2002, NULL, NULL, SDO_ELEM_INFO_ARRAY(1, 4, 2, 1, 2, 2, 5, 2, 1), SDO_ORDINATE_ARRAY(11, 12, 12, 15, 15, 16, 17, 18)),NULL);

------NURBS(cannot valid by oracle,but ok for wkt)
INSERT INTO countries2 values(
  16,'QiliMazhaluo',SDO_GEOMETRY(2002,NULL,NULL,SDO_ELEM_INFO_ARRAY(1, 2, 3),SDO_ORDINATE_ARRAY(3,7,0, 0, 1,-0.5, 1, 1,0.2, 2, 1,0.5, 3.5, 1,0.8, 2, 1,0.9, 1, 1,0.3, 0, 1,11,0, 0, 0, 0,  0.25, 0.5, 0.75, 1.0, 1.0, 1.0, 1.0)),NULL);
  
------Simple Polygon with straight line
INSERT INTO countries2 values(17,'MaiJia',SDO_GEOMETRY(2003, NULL, NULL, SDO_ELEM_INFO_ARRAY(1, 1003, 1), SDO_ORDINATE_ARRAY(11, 12, 12, 13, 15, 16, 17, 18,11, 12)),NULL);

-----Simple Polygong with curve line
Insert INTO countries2 VALUES(18,'MoLuoge',SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,2),SDO_ORDINATE_ARRAY(1,1,2,3,5,7,3,9,1,1)),NULL);

----Rectangle
INSERT INTO countries2 VALUES(19,'MolangBike',SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,3),SDO_ORDINATE_ARRAY(1,1, 5,7)),NULL);

----Circle
Insert INTO countries2 VALUES(20,'Bilishi',SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(2,1,3,0,4,1)),NULL);

----Coupound Polygon
INSERT INTO countries2 VALUES(21,'GeLante',SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1005,2, 1,2,1, 5,2,2),SDO_ORDINATE_ARRAY(6,10, 10,1, 14,10, 10,14, 6,10)));

----Collection(Point+Straight Line)
INSERT INTO countries2 VALUES(22,'LuSenbao',SDO_GEOMETRY(2004, NULL, NULL, SDO_ELEM_INFO_ARRAY(1, 1, 1, 3, 2, 1),SDO_ORDINATE_ARRAY(1, 1, 3, 4, 5, 6)),NULL);

----Collection(Point+Straight Line+Polygon),Note,this 1003 for element in collection cannot be valided by oracle,but can be accepted by WKT,this is a bug for jar
INSERT INTO countries2 VALUES(23,'XinJiaPo',SDO_GEOMETRY(2004, NULL, NULL, SDO_ELEM_INFO_ARRAY(1, 1, 1, 3, 2, 1, 7, 1003, 1),SDO_ORDINATE_ARRAY(1, 1, 3, 4, 5, 6, 2, 0, 3, 3, 5, 4, 2, 0)),NULL);

------MULTI LINE
INSERT INTO countries2 VALUES(26,'Riben',SDO_GEOMETRY(2006,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,2,1,5,2,1),SDO_ORDINATE_ARRAY(2,4,4,3,5,5,8,0)),NULL);

--MultiCurve
INSERT INTO countries2 VALUES(27,'LiBiya',SDO_GEOMETRY(2006,NULL,NULL,SDO_ELEM_INFO_ARRAY(1, 2,2,7,2,2),SDO_ORDINATE_ARRAY(2,4,4,3,5,5,8,0,8,7,10,6)),NULL);

---MultiPolygon

----------------------------------------------------buchong
---------------------polygon_with_hole
INSERT INTO countries2 VALUES(28,
  'Guba',
  SDO_GEOMETRY(2003, NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1, 19,2003,1),SDO_ORDINATE_ARRAY(2,4, 4,3, 10,3, 13,5, 13,9, 11,13, 5,13, 2,11, 2,4,7,5, 7,10, 10,10, 10,5, 7,5)),NULL);
