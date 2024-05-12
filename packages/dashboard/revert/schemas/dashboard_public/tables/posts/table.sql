-- Revert: schemas/dashboard_public/tables/posts/table from pg

BEGIN;
DROP TABLE "dashboard_public".posts;
COMMIT;  

