-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/event/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs DROP COLUMN event;
COMMIT;  

