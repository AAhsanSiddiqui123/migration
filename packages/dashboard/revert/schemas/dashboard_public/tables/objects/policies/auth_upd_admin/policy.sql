-- Revert: schemas/dashboard_public/tables/objects/policies/auth_upd_admin/policy from pg

BEGIN;
DROP POLICY auth_upd_admin ON "dashboard_public".objects;
COMMIT;  

