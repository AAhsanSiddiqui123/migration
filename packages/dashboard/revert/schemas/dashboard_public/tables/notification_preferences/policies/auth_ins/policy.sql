-- Revert: schemas/dashboard_public/tables/notification_preferences/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".notification_preferences;
COMMIT;  

