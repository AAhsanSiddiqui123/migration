-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/success/alterations/alt0000000543 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN success DROP NOT NULL;


COMMIT;  

