-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/is_primary/alterations/alt0000000450 from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN is_primary DROP DEFAULT;

COMMIT;  

