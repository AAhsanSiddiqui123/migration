-- Deploy: schemas/dashboard_public/tables/post_comments/columns/commenter_id/alterations/alt0000001082 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table
-- requires: schemas/dashboard_public/tables/post_comments/columns/commenter_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN commenter_id SET NOT NULL;
COMMIT;
