-- Deploy: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_action_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/action_impacts/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column
-- requires: schemas/dashboard_public/tables/action_impacts/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_impacts 
    ADD CONSTRAINT action_impacts_action_id_fkey 
    FOREIGN KEY (action_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
