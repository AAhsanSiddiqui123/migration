-- Revert: schemas/dashboard_roles_public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".audit_logs 
    DROP CONSTRAINT audit_logs_actor_id_fkey;

COMMIT;  

