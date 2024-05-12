-- Revert: schemas/dashboard_public/tables/group_locations/columns/group_id/column/alterations/alt0000001577 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations DROP COLUMN group_id;
COMMIT;  

