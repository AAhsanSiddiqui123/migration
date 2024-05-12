-- Deploy: schemas/dashboard_public/tables/addresses/columns/postcode/alterations/alt0000001647 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/postcode/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_postcode_chk CHECK (character_length(postcode) <= 24);
COMMIT;
