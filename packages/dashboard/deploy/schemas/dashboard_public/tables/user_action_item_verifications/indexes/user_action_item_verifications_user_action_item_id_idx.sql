-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/indexes/user_action_item_verifications_user_action_item_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_action_item_id/column

BEGIN;
CREATE INDEX user_action_item_verifications_user_action_item_id_idx ON "dashboard_public".user_action_item_verifications (user_action_item_id);
COMMIT;