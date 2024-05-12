-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/user_agent/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs DROP COLUMN user_agent;
COMMIT;  

