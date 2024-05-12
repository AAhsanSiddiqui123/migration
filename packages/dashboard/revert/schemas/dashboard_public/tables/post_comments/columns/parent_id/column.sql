-- Revert: schemas/dashboard_public/tables/post_comments/columns/parent_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN parent_id;
COMMIT;  

