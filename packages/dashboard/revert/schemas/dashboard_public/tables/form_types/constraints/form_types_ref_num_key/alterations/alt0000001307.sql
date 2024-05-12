-- Revert: schemas/dashboard_public/tables/form_types/constraints/form_types_ref_num_key/alterations/alt0000001307 from pg

BEGIN;
COMMENT ON CONSTRAINT form_types_ref_num_key ON "dashboard_public".form_types IS NULL;
COMMIT;  

