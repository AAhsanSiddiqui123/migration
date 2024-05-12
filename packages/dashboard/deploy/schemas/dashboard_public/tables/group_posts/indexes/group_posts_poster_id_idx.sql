-- Deploy: schemas/dashboard_public/tables/group_posts/indexes/group_posts_poster_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/poster_id/column

BEGIN;
CREATE INDEX group_posts_poster_id_idx ON "dashboard_public".group_posts (poster_id);
COMMIT;
