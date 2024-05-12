-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_limits_public".group_member_limits;
COMMIT;  

