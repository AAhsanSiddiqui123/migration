-- Revert: schemas/dashboard_public/tables/rewards/policies/auth_ins_admin/policy from pg

BEGIN;
DROP POLICY auth_ins_admin ON "dashboard_public".rewards;
COMMIT;  

