-- Revert: schemas/dashboard_public/tables/app_constants/triggers/insert_slg_name from pg

BEGIN;
DROP TRIGGER insert_slg_name ON "dashboard_public".app_constants;
COMMIT;  

