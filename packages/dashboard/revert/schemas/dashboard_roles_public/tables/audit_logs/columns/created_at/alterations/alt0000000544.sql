-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/created_at/alterations/alt0000000544 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN created_at DROP NOT NULL;


COMMIT;  

