-- Revert: schemas/dashboard_public/tables/group_posts/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN image;
COMMIT;  

