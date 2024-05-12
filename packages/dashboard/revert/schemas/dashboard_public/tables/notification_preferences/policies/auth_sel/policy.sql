-- Revert: schemas/dashboard_public/tables/notification_preferences/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".notification_preferences;
COMMIT;  

