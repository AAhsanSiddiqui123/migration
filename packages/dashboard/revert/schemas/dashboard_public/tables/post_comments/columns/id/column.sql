-- Revert: schemas/dashboard_public/tables/post_comments/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments DROP COLUMN id;
COMMIT;  

