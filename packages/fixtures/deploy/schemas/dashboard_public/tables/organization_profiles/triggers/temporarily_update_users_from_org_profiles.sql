-- Deploy schemas/dashboard_public/tables/organization_profiles/triggers/temporarily_update_users_from_org_profiles to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;

-- CREATE FUNCTION dashboard_private.tg_temporarily_update_users_from_org_profiles()
-- RETURNS TRIGGER AS $$
-- BEGIN

--     -- HERE till we remove these props from profiles...
--     UPDATE dashboard_public.users 
--         SET display_name = NEW.name,
--             profile_picture = NEW.profile_picture
--     WHERE id = NEW.organization_id;

--     RETURN NEW;
-- END;
-- $$
-- LANGUAGE 'plpgsql' VOLATILE;

-- CREATE TRIGGER temporarily_update_users_from_org_profiles
-- AFTER INSERT OR UPDATE ON dashboard_public.organization_profiles
-- FOR EACH ROW
-- EXECUTE PROCEDURE dashboard_private.tg_temporarily_update_users_from_org_profiles ();

COMMIT;
