-- Deploy: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_group_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments 
    ADD CONSTRAINT group_post_comments_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "dashboard_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
