-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/cc/column from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN cc;
COMMIT;  

