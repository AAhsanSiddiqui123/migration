-- Revert: schemas/dashboard_public/tables/user_settings/indexes/user_settings_location_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_settings_location_idx;
COMMIT;  

