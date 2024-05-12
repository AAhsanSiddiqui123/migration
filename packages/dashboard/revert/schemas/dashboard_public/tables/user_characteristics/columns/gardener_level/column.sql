-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/gardener_level/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN gardener_level;
COMMIT;  

