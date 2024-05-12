-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/user_agent/alterations/alt0000000541 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN user_agent DROP DEFAULT;

COMMIT;  

