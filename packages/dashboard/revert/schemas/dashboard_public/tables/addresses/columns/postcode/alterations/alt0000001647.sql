-- Revert: schemas/dashboard_public/tables/addresses/columns/postcode/alterations/alt0000001647 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_postcode_chk;
COMMIT;  

