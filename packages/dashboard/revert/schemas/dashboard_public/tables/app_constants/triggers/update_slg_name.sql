-- Revert: schemas/dashboard_public/tables/app_constants/triggers/update_slg_name from pg

BEGIN;
DROP TRIGGER update_slg_name ON "dashboard_public".app_constants;
COMMIT;  

