-- Deploy: schemas/dashboard_public/tables/post_comments/indexes/post_comments_commenter_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/post_comments/columns/commenter_id/column

BEGIN;
CREATE INDEX post_comments_commenter_id_idx ON "dashboard_public".post_comments (commenter_id);
COMMIT;
