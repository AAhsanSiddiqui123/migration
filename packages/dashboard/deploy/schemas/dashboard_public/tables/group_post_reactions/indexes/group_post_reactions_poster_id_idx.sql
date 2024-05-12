-- Deploy: schemas/dashboard_public/tables/group_post_reactions/indexes/group_post_reactions_poster_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table
-- requires: schemas/dashboard_public/tables/group_post_reactions/columns/poster_id/column

BEGIN;
CREATE INDEX group_post_reactions_poster_id_idx ON "dashboard_public".group_post_reactions (poster_id);
COMMIT;
