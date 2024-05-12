-- Deploy: schemas/dashboard_public/tables/user_action_items/indexes/user_action_items_verifier_updated_at_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/verifier_updated_at/column

BEGIN;
CREATE INDEX user_action_items_verifier_updated_at_idx ON "dashboard_public".user_action_items (verifier_updated_at);
COMMIT;
