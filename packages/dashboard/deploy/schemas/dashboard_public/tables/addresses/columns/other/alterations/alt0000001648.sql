-- Deploy: schemas/dashboard_public/tables/addresses/columns/other/alterations/alt0000001648 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/other/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_other_chk CHECK (character_length(other) <= 120);
COMMIT;
