-- Revert: schemas/dashboard_public/tables/user_settings/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_settings;
COMMIT;  

