-- Deploy: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_poster_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/post_reactions/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/post_reactions/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_reactions 
    ADD CONSTRAINT post_reactions_poster_id_fkey 
    FOREIGN KEY (poster_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
