-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/parent_id/alterations/alt0000001121 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_post_comments.parent_id IS NULL;
COMMIT;  

