-- Revert: schemas/dashboard_public/tables/user_forms/constraints/user_forms_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    DROP CONSTRAINT user_forms_pkey;

COMMIT;  

