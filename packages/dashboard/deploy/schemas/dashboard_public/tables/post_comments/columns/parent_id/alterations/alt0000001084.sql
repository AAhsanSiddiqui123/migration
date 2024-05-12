-- Deploy: schemas/dashboard_public/tables/post_comments/columns/parent_id/alterations/alt0000001084 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/columns/parent_id/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".post_comments.parent_id IS E'optional, parent comment.';
COMMIT;
