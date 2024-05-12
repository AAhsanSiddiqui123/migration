-- Deploy: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_action_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column
-- requires: schemas/dashboard_public/tables/user_viewed_actions/table
-- requires: schemas/dashboard_public/tables/user_viewed_actions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_viewed_actions 
    ADD CONSTRAINT user_viewed_actions_action_id_fkey 
    FOREIGN KEY (action_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
