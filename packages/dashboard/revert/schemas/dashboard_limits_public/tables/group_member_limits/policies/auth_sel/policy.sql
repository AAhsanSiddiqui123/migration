-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_limits_public".group_member_limits;
COMMIT;  

