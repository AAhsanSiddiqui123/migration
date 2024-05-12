-- Deploy schemas/dashboard_public/tables/user_profiles/fixtures/add_user_profiles to pg

-- requires: schemas/dashboard_public/tables/user_settings/fixtures/add_user_settings 
-- requires: schemas/dashboard_public/tables/user_characteristics/fixtures/add_user_characteristics 
-- requires: schemas/dashboard_public/tables/user_profiles/table 
-- requires: schemas/dashboard_public/tables/user_profiles/triggers/temporary_update_users_from_user_profiles 

BEGIN;

CREATE FUNCTION add_user_profiles_fixtures() returns void as $$
DECLARE
   uid uuid;
   fn text;
   ln text;

   gdr text;

   vdisplay_name text;
   vprofile_picture image;

BEGIN

-- SET session_replication_role TO replica;

FOR uid, fn, ln IN 
SELECT u.user_id, u.first_name, u.last_name
    FROM dashboard_public.user_settings u 
LOOP
    SELECT gender FROM dashboard_public.user_characteristics uc
        INTO gdr
    WHERE uc.user_id = uid;

    vprofile_picture = faker.profilepic(gdr);
    vdisplay_name = concat(fn, ' ', substring(ln from 1 for 1));

    INSERT INTO dashboard_public.user_profiles (
        user_id,
        bio,
        reputation,
        tags
    )
        VALUES
    (
        uid,
        faker.sentence(),
        faker.integer(0,10000),
        faker.tags(5,10)
    );

    UPDATE dashboard_public.users 
    SET 
        display_name = vdisplay_name,
        profile_picture = vprofile_picture
    WHERE id = uid;

END LOOP;

-- SET session_replication_role TO DEFAULT;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM add_user_profiles_fixtures();

DROP FUNCTION add_user_profiles_fixtures;


COMMIT;
