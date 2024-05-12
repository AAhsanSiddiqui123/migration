-- Revert: schemas/dashboard_public/tables/addresses/columns/address_line_3/alterations/alt0000001643 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_address_line_3_chk;
COMMIT;  

