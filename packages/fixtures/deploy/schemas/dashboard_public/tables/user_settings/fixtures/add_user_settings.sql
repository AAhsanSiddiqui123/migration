-- Deploy schemas/dashboard_public/tables/user_settings/fixtures/add_user_settings to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/fixtures/add_user_characteristics 
-- requires: schemas/dashboard_public/tables/users/fixtures/add_users
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/zip_codes/fixtures/add_zips 

BEGIN;

CREATE FUNCTION add_user_settings_fixture( ) returns void as $$
DECLARE
   uid uuid;
   gtext text;

   lnglat point;
   vzip int;
   postal dashboard_public.zip_codes;

   geojson json;
BEGIN

FOR uid, gtext IN SELECT u.user_id as uid, u.gender FROM dashboard_public.user_characteristics u
LOOP

    SELECT * FROM dashboard_public.zip_codes 
    OFFSET floor( random() * (select count(*) from dashboard_public.zip_codes) ) LIMIT 1
    INTO postal;

    IF (NOT FOUND) THEN 
        vzip = faker.zip('Los Angeles');
        lnglat = faker.lnglat(
            -118.561721,
            33.59,
            -117.646374,
            34.23302
        );
    ELSE
        vzip = postal.zip;
        geojson = ST_AsGeoJSON(postal.bbox)::json->'coordinates';
        lnglat = faker.lnglat(
            (geojson->0->0->0)::jsonb::float,
            (geojson->0->0->1)::jsonb::float,
            (geojson->0->2->0)::jsonb::float,
            (geojson->0->2->1)::jsonb::float
        );

    END IF;

    INSERT INTO dashboard_public.user_settings(
        user_id,
        first_name,
        last_name,
        zip,
        search_radius,
        location
    )
        VALUES
    (
        uid,
        faker.name(gtext),
        faker.surname(),
        vzip,
        20,
        ST_SetSRID(ST_MakePoint(lnglat[0], lnglat[1]),4326))
    ;

END LOOP;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM add_user_settings_fixture();

DROP FUNCTION add_user_settings_fixture;

COMMIT;
