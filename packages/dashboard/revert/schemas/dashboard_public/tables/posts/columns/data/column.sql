-- Revert: schemas/dashboard_public/tables/posts/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN data;
COMMIT;  

