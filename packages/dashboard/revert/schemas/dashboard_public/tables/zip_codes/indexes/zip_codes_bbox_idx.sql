-- Revert: schemas/dashboard_public/tables/zip_codes/indexes/zip_codes_bbox_idx from pg

BEGIN;
DROP INDEX "dashboard_public".zip_codes_bbox_idx;
COMMIT;  

