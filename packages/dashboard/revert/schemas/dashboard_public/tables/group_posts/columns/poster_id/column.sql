-- Revert: schemas/dashboard_public/tables/group_posts/columns/poster_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN poster_id;
COMMIT;  

