-- Revert: schemas/dashboard_public/tables/user_contacts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".user_contacts;
COMMIT;  
