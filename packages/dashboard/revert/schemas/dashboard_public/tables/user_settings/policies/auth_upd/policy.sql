-- Revert: schemas/dashboard_public/tables/user_settings/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".user_settings;
COMMIT;  

