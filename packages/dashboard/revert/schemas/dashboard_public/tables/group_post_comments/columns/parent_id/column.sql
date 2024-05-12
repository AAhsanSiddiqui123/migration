-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/parent_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments DROP COLUMN parent_id;
COMMIT;  

