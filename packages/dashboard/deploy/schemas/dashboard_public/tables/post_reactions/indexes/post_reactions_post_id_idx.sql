-- Deploy: schemas/dashboard_public/tables/post_reactions/indexes/post_reactions_post_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table
-- requires: schemas/dashboard_public/tables/post_reactions/columns/post_id/column

BEGIN;
CREATE INDEX post_reactions_post_id_idx ON "dashboard_public".post_reactions (post_id);
COMMIT;
