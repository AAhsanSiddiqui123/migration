-- Deploy: schemas/dashboard_public/tables/actions/constraints/actions_group_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column
-- requires: schemas/dashboard_public/tables/actions/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ADD CONSTRAINT actions_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "dashboard_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
