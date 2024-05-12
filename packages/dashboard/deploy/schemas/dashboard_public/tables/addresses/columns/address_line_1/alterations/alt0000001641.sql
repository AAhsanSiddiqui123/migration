-- Deploy: schemas/dashboard_public/tables/addresses/columns/address_line_1/alterations/alt0000001641 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/address_line_1/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_address_line_1_chk CHECK (character_length(address_line_1) <= 120);
COMMIT;
