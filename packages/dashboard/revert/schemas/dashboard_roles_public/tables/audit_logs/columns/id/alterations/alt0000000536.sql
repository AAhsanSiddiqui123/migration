-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/id/alterations/alt0000000536 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

