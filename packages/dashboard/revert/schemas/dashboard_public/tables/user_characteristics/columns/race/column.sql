-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/race/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN race;
COMMIT;  

