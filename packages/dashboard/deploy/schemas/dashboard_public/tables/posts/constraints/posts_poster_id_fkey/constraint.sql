-- Deploy: schemas/dashboard_public/tables/posts/constraints/posts_poster_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/posts/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".posts 
    ADD CONSTRAINT posts_poster_id_fkey 
    FOREIGN KEY (poster_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
