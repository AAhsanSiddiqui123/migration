-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/diy_level/alterations/alt0000000593 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_diy_level_chk;
COMMIT;  

