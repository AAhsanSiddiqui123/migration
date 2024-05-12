-- Revert: schemas/dashboard_public/tables/post_comments/columns/post_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN post_id;
COMMIT;  

