-- Revert: schemas/dashboard_public/tables/user_locations/columns/name/column/alterations/alt0000001540 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN name;
COMMIT;  

