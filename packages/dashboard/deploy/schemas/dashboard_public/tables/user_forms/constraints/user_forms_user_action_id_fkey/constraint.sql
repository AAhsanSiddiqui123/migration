-- Deploy: schemas/dashboard_public/tables/user_forms/constraints/user_forms_user_action_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/id/column
-- requires: schemas/dashboard_public/tables/user_forms/columns/user_action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ADD CONSTRAINT user_forms_user_action_id_fkey 
    FOREIGN KEY (user_action_id)
    REFERENCES "dashboard_public".user_actions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
