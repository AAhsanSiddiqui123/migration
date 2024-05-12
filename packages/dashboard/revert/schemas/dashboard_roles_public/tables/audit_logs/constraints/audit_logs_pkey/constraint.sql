-- Revert: schemas/dashboard_roles_public/tables/audit_logs/constraints/audit_logs_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    DROP CONSTRAINT audit_logs_pkey;

COMMIT;  

