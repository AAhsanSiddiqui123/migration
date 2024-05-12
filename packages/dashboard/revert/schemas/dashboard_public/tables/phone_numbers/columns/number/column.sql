-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/number/column from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN number;
COMMIT;  

