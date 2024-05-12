-- Revert: schemas/dashboard_public/tables/group_posts/table from pg

BEGIN;
DROP TABLE "dashboard_public".group_posts;
COMMIT;  

