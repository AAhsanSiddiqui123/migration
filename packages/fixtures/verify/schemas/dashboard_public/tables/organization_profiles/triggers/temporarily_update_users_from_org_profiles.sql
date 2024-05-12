-- Verify schemas/dashboard_public/tables/organization_profiles/triggers/temporarily_update_users_from_org_profiles  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_temporarily_update_users_from_org_profiles'); 
SELECT verify_trigger ('dashboard_public.temporarily_update_users_from_org_profiles');

ROLLBACK;
