-- Revert: schemas/dashboard_public/tables/objects/policies/auth_del_admin/policy from pg

BEGIN;
DROP POLICY auth_del_admin ON "dashboard_public".objects;
COMMIT;  

