-- Deploy: schemas/dashboard_public/tables/group_posts/columns/id/alterations/alt0000001094 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table
-- requires: schemas/dashboard_public/tables/group_posts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
