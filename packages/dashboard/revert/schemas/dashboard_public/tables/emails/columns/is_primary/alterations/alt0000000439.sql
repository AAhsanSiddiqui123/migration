-- Revert: schemas/dashboard_public/tables/emails/columns/is_primary/alterations/alt0000000439 from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN is_primary DROP DEFAULT;

COMMIT;  

