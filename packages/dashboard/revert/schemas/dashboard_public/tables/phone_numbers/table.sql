-- Revert: schemas/dashboard_public/tables/phone_numbers/table from pg

BEGIN;
DROP TABLE "dashboard_public".phone_numbers;
COMMIT;  

