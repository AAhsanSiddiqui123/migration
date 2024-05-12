-- Revert: schemas/dashboard_public/tables/notifications/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".notifications;
COMMIT;  

