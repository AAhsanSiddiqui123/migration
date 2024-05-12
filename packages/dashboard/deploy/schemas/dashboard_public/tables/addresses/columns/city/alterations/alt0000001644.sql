-- Deploy: schemas/dashboard_public/tables/addresses/columns/city/alterations/alt0000001644 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/city/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_city_chk CHECK (character_length(city) <= 120);
COMMIT;
