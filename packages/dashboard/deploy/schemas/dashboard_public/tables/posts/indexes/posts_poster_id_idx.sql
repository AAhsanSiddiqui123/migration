-- Deploy: schemas/dashboard_public/tables/posts/indexes/posts_poster_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/posts/columns/poster_id/column

BEGIN;
CREATE INDEX posts_poster_id_idx ON "dashboard_public".posts (poster_id);
COMMIT;
