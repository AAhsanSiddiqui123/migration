-- Revert: schemas/dashboard_public/tables/group_post_comments/table from pg

BEGIN;
DROP TABLE "dashboard_public".group_post_comments;
COMMIT;  

