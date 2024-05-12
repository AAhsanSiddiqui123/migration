-- Deploy: schemas/dashboard_public/tables/post_comments/columns/id/alterations/alt0000001081 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/post_comments/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
