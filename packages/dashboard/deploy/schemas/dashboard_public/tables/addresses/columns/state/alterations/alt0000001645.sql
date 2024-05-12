-- Deploy: schemas/dashboard_public/tables/addresses/columns/state/alterations/alt0000001645 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/state/column

BEGIN;
ALTER TABLE "dashboard_public".addresses ADD CONSTRAINT addresses_state_chk CHECK (character_length(state) <= 120);
COMMIT;
