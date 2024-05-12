-- Revert: schemas/dashboard_roles_public/tables/audit_logs/table from pg

BEGIN;
DROP TABLE "dashboard_roles_public".audit_logs;
COMMIT;  

