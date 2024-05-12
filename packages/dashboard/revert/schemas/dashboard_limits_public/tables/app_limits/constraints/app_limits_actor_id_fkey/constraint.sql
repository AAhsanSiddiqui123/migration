-- Revert: schemas/dashboard_limits_public/tables/app_limits/constraints/app_limits_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limits 
    DROP CONSTRAINT app_limits_actor_id_fkey;

COMMIT;  

