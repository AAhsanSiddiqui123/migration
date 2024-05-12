-- Deploy: schemas/dashboard_public/tables/post_comments/constraints/post_comments_commenter_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/post_comments/columns/commenter_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_comments 
    ADD CONSTRAINT post_comments_commenter_id_fkey 
    FOREIGN KEY (commenter_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
