-- Revert: schemas/dashboard_roles_public/tables/audit_logs/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_roles_public".audit_logs;
COMMIT;  

