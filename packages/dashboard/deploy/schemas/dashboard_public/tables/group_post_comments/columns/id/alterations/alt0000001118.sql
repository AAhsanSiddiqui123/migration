-- Deploy: schemas/dashboard_public/tables/group_post_comments/columns/id/alterations/alt0000001118 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table
-- requires: schemas/dashboard_public/tables/group_post_comments/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
