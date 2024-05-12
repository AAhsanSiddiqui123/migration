-- Revert: schemas/dashboard_public/tables/post_comments/columns/parent_id/alterations/alt0000001084 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".post_comments.parent_id IS NULL;
COMMIT;  

