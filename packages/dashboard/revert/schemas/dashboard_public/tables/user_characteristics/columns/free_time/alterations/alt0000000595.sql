-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/free_time/alterations/alt0000000595 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_free_time_chk;
COMMIT;  

