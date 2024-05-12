-- Revert: schemas/dashboard_public/tables/emails/columns/is_verified/alterations/alt0000000437 from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

