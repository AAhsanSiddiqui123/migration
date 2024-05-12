-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/home_ownership/alterations/alt0000000591 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_home_ownership_chk;
COMMIT;  

