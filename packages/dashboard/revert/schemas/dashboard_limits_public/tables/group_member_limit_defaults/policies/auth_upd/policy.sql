-- Revert: schemas/dashboard_limits_public/tables/group_member_limit_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_limits_public".group_member_limit_defaults;
COMMIT;  

