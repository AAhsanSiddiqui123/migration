-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_bbox_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_bbox_idx;
COMMIT;  

