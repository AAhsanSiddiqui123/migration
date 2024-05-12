-- Deploy: schemas/dashboard_public/tables/addresses/columns/address_line_2/alterations/alt0000001642 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/address_line_2/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_address_line_2_chk CHECK (character_length(address_line_2) <= 120);
COMMIT;
