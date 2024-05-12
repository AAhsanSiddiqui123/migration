-- Revert: schemas/dashboard_public/tables/emails/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".emails;
COMMIT;  

