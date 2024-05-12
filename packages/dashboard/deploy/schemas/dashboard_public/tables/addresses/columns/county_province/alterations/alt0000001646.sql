-- Deploy: schemas/dashboard_public/tables/addresses/columns/county_province/alterations/alt0000001646 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/county_province/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_county_province_chk CHECK (character_length(county_province) <= 120);
COMMIT;
