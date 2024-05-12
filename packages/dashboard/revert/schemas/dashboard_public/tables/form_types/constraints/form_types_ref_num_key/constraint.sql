-- Revert: schemas/dashboard_public/tables/form_types/constraints/form_types_ref_num_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types 
    DROP CONSTRAINT form_types_ref_num_key;

COMMIT;  

