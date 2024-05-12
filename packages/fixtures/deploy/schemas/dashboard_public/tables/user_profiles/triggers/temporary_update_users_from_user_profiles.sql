-- Deploy schemas/dashboard_public/tables/user_profiles/triggers/temporary_update_users_from_user_profiles to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table

BEGIN;

-- CREATE FUNCTION dashboard_private.tg_temporary_update_users_from_user_profiles()
-- RETURNS TRIGGER AS $$
-- BEGIN

--     -- HERE till we remove these props from profiles...
--     UPDATE dashboard_public.users 
--         SET display_name = NEW.display_name,
--             profile_picture = NEW.profile_picture
--     WHERE id = NEW.user_id;

--     RETURN NEW;
-- END;
-- $$
-- LANGUAGE 'plpgsql' VOLATILE;

-- CREATE TRIGGER temporary_update_users_from_user_profiles
-- AFTER INSERT OR UPDATE ON dashboard_public.user_profiles
-- FOR EACH ROW
-- EXECUTE PROCEDURE dashboard_private.tg_temporary_update_users_from_user_profiles ();

COMMIT;
