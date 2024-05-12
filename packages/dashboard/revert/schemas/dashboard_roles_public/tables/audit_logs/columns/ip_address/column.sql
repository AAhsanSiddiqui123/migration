-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/ip_address/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs DROP COLUMN ip_address;
COMMIT;  

