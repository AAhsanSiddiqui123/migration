-- Deploy: schemas/dashboard_public/tables/group_post_comments/indexes/group_post_comments_commenter_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/commenter_id/column

BEGIN;
CREATE INDEX group_post_comments_commenter_id_idx ON "dashboard_public".group_post_comments (commenter_id);
COMMIT;
