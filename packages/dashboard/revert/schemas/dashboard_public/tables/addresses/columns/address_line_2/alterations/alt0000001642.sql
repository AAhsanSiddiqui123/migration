-- Revert: schemas/dashboard_public/tables/addresses/columns/address_line_2/alterations/alt0000001642 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_address_line_2_chk;
COMMIT;  

