-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/id/alterations/alt0000000442 from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

