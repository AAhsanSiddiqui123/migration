-- Revert: schemas/dashboard_public/tables/post_comments/columns/commenter_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN commenter_id;
COMMIT;  

