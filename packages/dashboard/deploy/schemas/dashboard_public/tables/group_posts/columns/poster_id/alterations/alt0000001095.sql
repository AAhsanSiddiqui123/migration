-- Deploy: schemas/dashboard_public/tables/group_posts/columns/poster_id/alterations/alt0000001095 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN poster_id SET NOT NULL;
COMMIT;
