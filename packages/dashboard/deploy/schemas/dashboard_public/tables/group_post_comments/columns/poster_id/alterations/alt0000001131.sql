-- Deploy: schemas/dashboard_public/tables/group_post_comments/columns/poster_id/alterations/alt0000001131 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN poster_id SET DEFAULT uuid_nil();
COMMIT;
