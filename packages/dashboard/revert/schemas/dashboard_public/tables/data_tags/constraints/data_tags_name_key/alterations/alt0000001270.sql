-- Revert: schemas/dashboard_public/tables/data_tags/constraints/data_tags_name_key/alterations/alt0000001270 from pg

BEGIN;
COMMENT ON CONSTRAINT data_tags_name_key ON "dashboard_public".data_tags IS NULL;
COMMIT;  

