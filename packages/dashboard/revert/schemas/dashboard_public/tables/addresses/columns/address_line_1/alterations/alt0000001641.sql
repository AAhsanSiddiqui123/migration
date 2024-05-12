-- Revert: schemas/dashboard_public/tables/addresses/columns/address_line_1/alterations/alt0000001641 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_address_line_1_chk;
COMMIT;  

