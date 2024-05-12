-- Revert: schemas/dashboard_public/tables/users/columns/type/alterations/alt0000000018 from pg

BEGIN;


ALTER TABLE "dashboard_public".users 
    ALTER COLUMN type DROP DEFAULT;

COMMIT;  

