-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN is_verified;
COMMIT;  

