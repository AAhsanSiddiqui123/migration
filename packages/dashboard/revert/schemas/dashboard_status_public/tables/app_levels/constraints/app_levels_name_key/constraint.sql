-- Revert: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels 
    DROP CONSTRAINT app_levels_name_key;

COMMIT;  

