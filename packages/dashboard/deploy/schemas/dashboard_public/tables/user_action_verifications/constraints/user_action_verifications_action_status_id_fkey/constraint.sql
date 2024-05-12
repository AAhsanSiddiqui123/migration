-- Deploy: schemas/dashboard_public/tables/user_action_verifications/constraints/user_action_verifications_action_status_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/action_status_types/columns/id/column
-- requires: schemas/dashboard_public/tables/user_action_verifications/columns/action_status_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_verifications 
    ADD CONSTRAINT user_action_verifications_action_status_id_fkey 
    FOREIGN KEY (action_status_id)
    REFERENCES "dashboard_public".action_status_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
