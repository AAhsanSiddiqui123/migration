-- Revert: schemas/dashboard_public/tables/user_locations/columns/type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN type_id;
COMMIT;  

