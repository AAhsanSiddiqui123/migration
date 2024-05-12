-- Deploy: schemas/dashboard_public/tables/user_action_reactions/constraints/user_action_reactions_user_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions 
    ADD CONSTRAINT user_action_reactions_user_id_fkey 
    FOREIGN KEY (user_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
