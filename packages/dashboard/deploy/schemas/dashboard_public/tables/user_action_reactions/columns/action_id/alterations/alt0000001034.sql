-- Deploy: schemas/dashboard_public/tables/user_action_reactions/columns/action_id/alterations/alt0000001034 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN action_id SET DEFAULT uuid_nil();
COMMIT;
