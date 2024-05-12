-- Revert: schemas/dashboard_public/tables/rewards/policies/auth_upd_admin/policy from pg

BEGIN;
DROP POLICY auth_upd_admin ON "dashboard_public".rewards;
COMMIT;  

