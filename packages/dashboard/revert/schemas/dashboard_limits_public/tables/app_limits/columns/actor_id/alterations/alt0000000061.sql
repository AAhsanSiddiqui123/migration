-- Revert: schemas/dashboard_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000000061 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limits 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

