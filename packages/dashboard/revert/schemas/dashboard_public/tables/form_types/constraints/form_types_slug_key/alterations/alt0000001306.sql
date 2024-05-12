-- Revert: schemas/dashboard_public/tables/form_types/constraints/form_types_slug_key/alterations/alt0000001306 from pg

BEGIN;
COMMENT ON CONSTRAINT form_types_slug_key ON "dashboard_public".form_types IS NULL;
COMMIT;  

