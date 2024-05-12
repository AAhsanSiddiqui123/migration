-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/number/alterations/alt0000000446 from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN number DROP NOT NULL;


COMMIT;  

