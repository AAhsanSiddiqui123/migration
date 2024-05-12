-- Revert: schemas/dashboard_public/tables/tags/constraints/tags_name_key/alterations/alt0000000983 from pg

BEGIN;
COMMENT ON CONSTRAINT tags_name_key ON "dashboard_public".tags IS NULL;
COMMIT;  

