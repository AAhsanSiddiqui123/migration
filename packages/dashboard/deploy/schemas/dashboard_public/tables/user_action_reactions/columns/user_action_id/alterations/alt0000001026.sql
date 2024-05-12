-- Deploy: schemas/dashboard_public/tables/user_action_reactions/columns/user_action_id/alterations/alt0000001026 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/user_action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN user_action_id SET NOT NULL;
COMMIT;
