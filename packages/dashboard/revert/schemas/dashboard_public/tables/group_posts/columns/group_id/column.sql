-- Revert: schemas/dashboard_public/tables/group_posts/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN group_id;
COMMIT;  

