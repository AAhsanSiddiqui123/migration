-- Revert: schemas/dashboard_public/tables/forms/constraints/forms_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".forms 
    DROP CONSTRAINT forms_pkey;

COMMIT;  

