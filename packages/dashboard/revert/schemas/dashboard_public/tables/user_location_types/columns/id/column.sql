-- Revert: schemas/dashboard_public/tables/user_location_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types DROP COLUMN id;
COMMIT;  

