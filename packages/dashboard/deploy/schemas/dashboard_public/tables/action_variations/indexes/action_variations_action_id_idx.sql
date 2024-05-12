-- Deploy: schemas/dashboard_public/tables/action_variations/indexes/action_variations_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table
-- requires: schemas/dashboard_public/tables/action_variations/columns/action_id/column

BEGIN;
CREATE INDEX action_variations_action_id_idx ON "dashboard_public".action_variations (action_id);
COMMIT;
