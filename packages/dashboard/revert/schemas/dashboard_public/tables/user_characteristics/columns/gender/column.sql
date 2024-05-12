-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/gender/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN gender;
COMMIT;  

