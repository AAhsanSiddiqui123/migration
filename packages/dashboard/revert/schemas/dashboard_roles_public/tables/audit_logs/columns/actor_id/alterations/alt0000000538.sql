-- Revert: schemas/dashboard_roles_public/tables/audit_logs/columns/actor_id/alterations/alt0000000538 from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

