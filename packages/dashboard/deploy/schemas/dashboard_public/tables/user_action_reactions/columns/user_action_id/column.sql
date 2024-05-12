-- Deploy: schemas/dashboard_public/tables/user_action_reactions/columns/user_action_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions ADD COLUMN user_action_id uuid;
COMMIT;
