-- Revert: schemas/dashboard_public/tables/post_comments/columns/poster_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN poster_id;
COMMIT;  

