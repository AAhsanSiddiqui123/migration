-- Deploy: schemas/dashboard_public/tables/post_comments/columns/post_id/alterations/alt0000001086 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/post_comments/columns/post_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN post_id SET NOT NULL;
COMMIT;
