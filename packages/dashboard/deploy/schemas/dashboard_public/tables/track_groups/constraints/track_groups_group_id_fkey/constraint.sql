-- Deploy: schemas/dashboard_public/tables/track_groups/constraints/track_groups_group_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column
-- requires: schemas/dashboard_public/tables/track_groups/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_groups 
    ADD CONSTRAINT track_groups_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "dashboard_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
