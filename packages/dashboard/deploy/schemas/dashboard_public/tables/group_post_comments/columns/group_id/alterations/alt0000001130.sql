-- Deploy: schemas/dashboard_public/tables/group_post_comments/columns/group_id/alterations/alt0000001130 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN group_id SET DEFAULT uuid_nil();
COMMIT;
