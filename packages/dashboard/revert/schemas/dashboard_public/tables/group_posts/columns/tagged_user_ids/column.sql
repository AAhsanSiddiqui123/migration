-- Revert: schemas/dashboard_public/tables/group_posts/columns/tagged_user_ids/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN tagged_user_ids;
COMMIT;  

