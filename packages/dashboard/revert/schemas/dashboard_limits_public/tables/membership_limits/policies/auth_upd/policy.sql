-- Revert: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_limits_public".membership_limits;
COMMIT;  

