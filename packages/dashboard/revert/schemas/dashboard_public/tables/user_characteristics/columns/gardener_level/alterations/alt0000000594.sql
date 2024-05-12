-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/gardener_level/alterations/alt0000000594 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_gardener_level_chk;
COMMIT;  

