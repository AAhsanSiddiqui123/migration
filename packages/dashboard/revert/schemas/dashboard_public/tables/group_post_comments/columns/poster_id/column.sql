-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/poster_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments DROP COLUMN poster_id;
COMMIT;  

