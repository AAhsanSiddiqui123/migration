-- Deploy: schemas/dashboard_public/tables/related_actions/constraints/related_actions_required_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column
-- requires: schemas/dashboard_public/tables/related_actions/columns/required_id/column

BEGIN;

ALTER TABLE "dashboard_public".related_actions 
    ADD CONSTRAINT related_actions_required_id_fkey 
    FOREIGN KEY (required_id)
    REFERENCES "dashboard_public".actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
