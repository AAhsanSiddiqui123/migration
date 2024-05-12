-- Revert: schemas/dashboard_public/tables/group_posts/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN data;
COMMIT;  

