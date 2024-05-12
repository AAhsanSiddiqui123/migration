-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_bbox_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_bbox_idx;
COMMIT;  

