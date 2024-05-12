-- Deploy: schemas/dashboard_public/tables/user_pass_actions/columns/action_id/alterations/alt0000000994 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table
-- requires: schemas/dashboard_public/tables/user_pass_actions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;
