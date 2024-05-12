-- Verify: schemas/dashboard_roles_public/tables/audit_logs/table on pg

BEGIN;
SELECT verify_table('dashboard_roles_public.audit_logs');
COMMIT;  

