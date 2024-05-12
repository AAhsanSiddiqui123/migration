-- Revert: schemas/dashboard_public/tables/app_constants/constraints/app_constants_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants 
    DROP CONSTRAINT app_constants_pkey;

COMMIT;  

