-- Deploy: schemas/dashboard_public/tables/group_posts/constraints/group_posts_poster_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/group_posts/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_posts 
    ADD CONSTRAINT group_posts_poster_id_fkey 
    FOREIGN KEY (poster_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
