-- Revert: schemas/dashboard_public/tables/posts/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN image;
COMMIT;  

