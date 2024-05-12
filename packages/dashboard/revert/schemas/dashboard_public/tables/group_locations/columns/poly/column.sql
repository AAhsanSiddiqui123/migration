-- Revert: schemas/dashboard_public/tables/group_locations/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations DROP COLUMN poly;
COMMIT;  

