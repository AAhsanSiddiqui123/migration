-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/post_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments DROP COLUMN post_id;
COMMIT;  

