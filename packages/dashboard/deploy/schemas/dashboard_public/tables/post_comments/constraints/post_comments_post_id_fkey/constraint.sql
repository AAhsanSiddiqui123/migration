-- Deploy: schemas/dashboard_public/tables/post_comments/constraints/post_comments_post_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/posts/columns/id/column
-- requires: schemas/dashboard_public/tables/post_comments/columns/post_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_comments 
    ADD CONSTRAINT post_comments_post_id_fkey 
    FOREIGN KEY (post_id)
    REFERENCES "dashboard_public".posts (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
