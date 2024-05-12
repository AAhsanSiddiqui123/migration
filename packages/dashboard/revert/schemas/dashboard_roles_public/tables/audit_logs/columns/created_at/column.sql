-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/created_at/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs DROP COLUMN created_at;
COMMIT;  

