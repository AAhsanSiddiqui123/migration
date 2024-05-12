-- Revert: schemas/dashboard_public/tables/user_settings/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN location;
COMMIT;  

