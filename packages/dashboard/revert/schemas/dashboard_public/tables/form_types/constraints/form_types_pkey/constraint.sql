-- Revert: schemas/dashboard_public/tables/form_types/constraints/form_types_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types 
    DROP CONSTRAINT form_types_pkey;

COMMIT;  

