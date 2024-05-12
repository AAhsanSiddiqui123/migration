-- Deploy: schemas/dashboard_public/tables/user_actions/constraints/user_actions_user_status_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/action_status_types/table
-- requires: schemas/dashboard_public/tables/action_status_types/columns/id/column
-- requires: schemas/dashboard_public/tables/user_actions/columns/user_status_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ADD CONSTRAINT user_actions_user_status_id_fkey 
    FOREIGN KEY (user_status_id)
    REFERENCES "dashboard_public".action_status_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
