-- Revert: schemas/dashboard_public/tables/global_languages/constraints/global_languages_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages 
    DROP CONSTRAINT global_languages_pkey;

COMMIT;  

