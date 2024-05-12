-- Revert: schemas/dashboard_public/tables/group_locations/columns/location_id/column/alterations/alt0000001582 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations DROP COLUMN location_id;
COMMIT;  

