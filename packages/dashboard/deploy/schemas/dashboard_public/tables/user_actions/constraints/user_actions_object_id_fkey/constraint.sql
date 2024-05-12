-- Deploy: schemas/dashboard_public/tables/user_actions/constraints/user_actions_object_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/objects/columns/id/column
-- requires: schemas/dashboard_public/tables/user_actions/columns/object_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ADD CONSTRAINT user_actions_object_id_fkey 
    FOREIGN KEY (object_id)
    REFERENCES "dashboard_public".objects (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
