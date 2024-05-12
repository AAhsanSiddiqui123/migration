-- Revert: schemas/dashboard_public/tables/users/policies/auth_del_admin_deletes/policy from pg

BEGIN;
DROP POLICY auth_del_admin_deletes ON "dashboard_public".users;
COMMIT;  

