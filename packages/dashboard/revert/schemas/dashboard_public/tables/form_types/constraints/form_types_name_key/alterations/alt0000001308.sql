-- Revert: schemas/dashboard_public/tables/form_types/constraints/form_types_name_key/alterations/alt0000001308 from pg

BEGIN;
COMMENT ON CONSTRAINT form_types_name_key ON "dashboard_public".form_types IS NULL;
COMMIT;  

