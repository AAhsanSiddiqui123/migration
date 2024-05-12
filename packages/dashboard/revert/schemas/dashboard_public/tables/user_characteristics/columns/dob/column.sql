-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/dob/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN dob;
COMMIT;  

