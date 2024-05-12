-- Revert: schemas/dashboard_public/tables/post_comments/table from pg

BEGIN;
DROP TABLE "dashboard_public".post_comments;
COMMIT;  

