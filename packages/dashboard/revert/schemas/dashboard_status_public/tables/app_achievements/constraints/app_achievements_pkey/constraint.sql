-- Revert: schemas/dashboard_status_public/tables/app_achievements/constraints/app_achievements_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements 
    DROP CONSTRAINT app_achievements_pkey;

COMMIT;  

