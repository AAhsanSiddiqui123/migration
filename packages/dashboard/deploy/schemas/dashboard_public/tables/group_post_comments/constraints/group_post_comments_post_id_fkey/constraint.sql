-- Deploy: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_post_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/id/column
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/post_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments 
    ADD CONSTRAINT group_post_comments_post_id_fkey 
    FOREIGN KEY (post_id)
    REFERENCES "dashboard_public".group_posts (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
