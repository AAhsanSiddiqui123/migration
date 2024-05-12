-- Deploy: schemas/dashboard_public/tables/group_post_comments/columns/poster_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments ADD COLUMN poster_id uuid;
COMMIT;
