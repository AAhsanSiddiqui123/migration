-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/ip_address/alterations/alt0000000542 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;

COMMIT;  

