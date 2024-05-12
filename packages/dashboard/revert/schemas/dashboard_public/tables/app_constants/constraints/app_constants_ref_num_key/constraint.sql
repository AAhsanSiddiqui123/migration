-- Revert: schemas/dashboard_public/tables/app_constants/constraints/app_constants_ref_num_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants 
    DROP CONSTRAINT app_constants_ref_num_key;

COMMIT;  

