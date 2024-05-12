-- Revert: schemas/dashboard_public/tables/users/policies/auth_ins_insert_chk/policy from pg

BEGIN;
DROP POLICY auth_ins_insert_chk ON "dashboard_public".users;
COMMIT;  

