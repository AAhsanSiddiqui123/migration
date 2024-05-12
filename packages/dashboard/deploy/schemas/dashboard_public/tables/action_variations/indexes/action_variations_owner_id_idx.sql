-- Deploy: schemas/dashboard_public/tables/action_variations/indexes/action_variations_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table
-- requires: schemas/dashboard_public/tables/action_variations/columns/owner_id/column

BEGIN;
CREATE INDEX action_variations_owner_id_idx ON "dashboard_public".action_variations (owner_id);
COMMIT;
