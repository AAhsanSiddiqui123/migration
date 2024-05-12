-- Revert: schemas/dashboard_public/tables/group_posts/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN id;
COMMIT;  

