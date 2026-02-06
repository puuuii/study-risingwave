CREATE TABLE inf_gen (
    timestamp timestamp,
    user_id varchar,
    latlong struct<latitude double, longitude double>,
)
WITH (
    connector = 'datagen',

    fields.timestamp.kind = 'random',
    -- fields.timestamp.max_past = '1 day',
    fields.timestamp.max_past_mode = 'relative',
    fields.timestamp.seed = '1',

    fields.user_id.kind = 'random',
    fields.user_id.length = '1',
    fields.user_id.seed = '2',

    fields.latlong.latitude.kind = 'random',
    fields.latlong.latitude.min = '20.42',
    fields.latlong.latitude.max = '45.55',
    fields.latlong.latitude.seed = '3',

    fields.latlong.longitude.kind = 'random',
    fields.latlong.longitude.min = '122.93',
    fields.latlong.longitude.max = '153.98',
    fields.latlong.longitude.seed = '4',

    datagen.rows.per.second = '1'
 );
