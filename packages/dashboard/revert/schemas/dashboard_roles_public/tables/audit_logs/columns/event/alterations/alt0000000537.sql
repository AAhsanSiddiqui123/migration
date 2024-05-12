-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/event/alterations/alt0000000537 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN event DROP NOT NULL;


COMMIT;  

