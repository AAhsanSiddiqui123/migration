-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/diy_level/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN diy_level;
COMMIT;  

