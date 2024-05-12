-- Deploy schemas/dashboard_public/tables/users/fixtures/add_users to pg

-- requires: schemas/faker/tables/dictionary/fixtures/add_sustainability_tags
-- requires: schemas/dashboard_public/tables/zip_codes/fixtures/add_zips 

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

CREATE FUNCTION add_users_fixture(
  num int
) returns void as $$
DECLARE
  i int;
  email email;
BEGIN

FOR i IN SELECT * FROM generate_series(1, num) g(num)
LOOP
        email = faker.email();
        BEGIN
        PERFORM dashboard_roles_public.register(
            email := email,
            password := faker.password()
        );
        EXCEPTION WHEN OTHERS THEN
            -- Do nothing, and loop to try the UPDATE again.
            RAISE LOG 'email : %', email; 
            RAISE LOG '% %', SQLERRM, SQLSTATE;
        END;

END LOOP;

truncate table app_jobs.jobs cascade;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

CREATE FUNCTION create_pseudo_fake_user(email email, password text)
returns void as $$ 
DECLARE
   uid uuid;
   v_user dashboard_public.users;
BEGIN
    uid = uuid_generate_v5 (uuid_ns_url (), email::text);

    INSERT INTO dashboard_public.users (id) VALUES (uid)
    RETURNING * INTO v_user;

    INSERT INTO dashboard_public.emails (owner_id, email)
      VALUES (v_user.id, trim(create_pseudo_fake_user.email));

    PERFORM dashboard_encrypted.set
      (v_user.id, 'password_hash', password, 'crypt');
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

CREATE FUNCTION add_users_fixture_login_users(
  num int
) returns void as $$
DECLARE
  i int;
  vemail email;
BEGIN

  PERFORM create_pseudo_fake_user(
      email := 'test@test.com',
      password := 'qwerty123'
  );

  FOR i IN SELECT * FROM generate_series(1, num) g(num)
  LOOP
    vemail = concat('user', i::text, '@dbe.la');
    BEGIN
    PERFORM create_pseudo_fake_user(
        email := vemail,
        password := 'password'
    );
    EXCEPTION WHEN OTHERS THEN
        -- Do nothing, and loop to try the UPDATE again.
        RAISE LOG 'email : %', vemail; 
        RAISE LOG '% %', SQLERRM, SQLSTATE;

    END;
  END LOOP;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM add_users_fixture(150);
SELECT * FROM add_users_fixture_login_users(10);

DROP FUNCTION add_users_fixture;
DROP FUNCTION add_users_fixture_login_users;
DROP FUNCTION create_pseudo_fake_user;

COMMIT;
