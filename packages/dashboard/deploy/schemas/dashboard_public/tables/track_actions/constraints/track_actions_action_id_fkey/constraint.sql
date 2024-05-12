-- Deploy: schemas/dashboard_public/tables/track_actions/constraints/track_actions_action_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column
-- requires: schemas/dashboard_public/tables/track_actions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_actions 
    ADD CONSTRAINT track_actions_action_id_fkey 
    FOREIGN KEY (action_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
