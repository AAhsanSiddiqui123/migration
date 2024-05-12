-- Deploy schemas/dashboard_public/tables/user_characteristics/fixtures/add_user_characteristics to pg

-- requires: schemas/dashboard_public/tables/users/fixtures/add_users 
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

CREATE FUNCTION add_user_characteristics_fixture( ) returns void as $$
DECLARE
   uid uuid;
   vage int;
   vgender text;
BEGIN

FOR uid IN SELECT u.id as uid FROM dashboard_public.users u WHERE type = 0
LOOP
   vage = faker.integer(18,65);
   vgender = faker.gender();
   INSERT INTO dashboard_public.user_characteristics
    (
      user_id,
      income,
      gender,
      age,
      dob
    )
        VALUES
    (
      uid,
      faker.float(10000,150000),
      vgender,
      vage,
      faker.birthdate(vage,vage)
    )
    ;

  -- RAISE LOG '(%) % % % %', ucid, uid, vage, vgender, faker.birthdate(vage, vage);
END LOOP;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM add_user_characteristics_fixture();

DROP FUNCTION add_user_characteristics_fixture;

COMMIT;
