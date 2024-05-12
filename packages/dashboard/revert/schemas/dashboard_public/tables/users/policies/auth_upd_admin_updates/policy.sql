-- Revert: schemas/dashboard_public/tables/users/policies/auth_upd_admin_updates/policy from pg

BEGIN;
DROP POLICY auth_upd_admin_updates ON "dashboard_public".users;
COMMIT;  

