-- Revert: schemas/dashboard_public/tables/user_location_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_location_types;
COMMIT;  

