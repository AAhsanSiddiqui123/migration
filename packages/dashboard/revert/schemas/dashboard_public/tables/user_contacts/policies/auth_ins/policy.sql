-- Revert: schemas/dashboard_public/tables/user_contacts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_contacts;
COMMIT;  

