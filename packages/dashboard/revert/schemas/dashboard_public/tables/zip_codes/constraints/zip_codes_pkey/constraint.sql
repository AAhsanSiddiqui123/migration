-- Revert: schemas/dashboard_public/tables/zip_codes/constraints/zip_codes_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes 
    DROP CONSTRAINT zip_codes_pkey;

COMMIT;  

