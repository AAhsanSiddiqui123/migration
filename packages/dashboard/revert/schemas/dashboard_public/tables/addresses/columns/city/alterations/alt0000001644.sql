-- Revert: schemas/dashboard_public/tables/addresses/columns/city/alterations/alt0000001644 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_city_chk;
COMMIT;  

