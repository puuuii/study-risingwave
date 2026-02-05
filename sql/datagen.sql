CREATE TABLE s1 (i1 int [], v1 struct<v2 int, v3 double>, t1 timestamp, z1 timestamptz, c1 varchar)
WITH (
     connector = 'datagen',

     fields.i1.length = '3',
     fields.i1._.kind = 'sequence',
     fields.i1._.start = '1',
     fields.i1._.end = '15',

     fields.v1.v2.kind = 'random',
     fields.v1.v2.min = '-10',
     fields.v1.v2.max = '10',
     fields.v1.v2.seed = '1',

     fields.v1.v3.kind = 'random',
     fields.v1.v3.min = '15',
     fields.v1.v3.max = '55',
     fields.v1.v3.seed = '1',

     fields.t1.kind = 'random',
     fields.t1.max_past = '2h 37min',
     fields.t1.max_past_mode = 'relative',
     fields.t1.seed = '3',

     fields.z1.kind = 'random',
     fields.z1.max_past = '2h 37min',
     fields.z1.max_past_mode = 'relative',
     fields.z1.seed = '3',

     fields.c1.kind = 'random',
     fields.c1.length = '16',
     fields.c1.seed = '3',

     datagen.rows.per.second = '10'
 ) FORMAT PLAIN ENCODE JSON;
