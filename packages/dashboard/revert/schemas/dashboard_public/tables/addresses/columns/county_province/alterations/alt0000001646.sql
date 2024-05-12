-- Revert: schemas/dashboard_public/tables/addresses/columns/county_province/alterations/alt0000001646 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_county_province_chk;
COMMIT;  

