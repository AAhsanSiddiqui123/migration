-- Deploy: schemas/dashboard_public/tables/user_action_reactions/indexes/user_action_reactions_user_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/user_action_id/column

BEGIN;
CREATE INDEX user_action_reactions_user_action_id_idx ON "dashboard_public".user_action_reactions (user_action_id);
COMMIT;
