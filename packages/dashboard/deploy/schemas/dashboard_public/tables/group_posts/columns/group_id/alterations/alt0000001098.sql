-- Deploy: schemas/dashboard_public/tables/group_posts/columns/group_id/alterations/alt0000001098 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN group_id SET NOT NULL;
COMMIT;
