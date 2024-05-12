-- Revert: schemas/dashboard_public/tables/emails/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".emails;
COMMIT;  

