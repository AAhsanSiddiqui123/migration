-- Revert: schemas/dashboard_public/tables/impacts/indexes/impacts_data_tags_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impacts_data_tags_idx;
COMMIT;  

