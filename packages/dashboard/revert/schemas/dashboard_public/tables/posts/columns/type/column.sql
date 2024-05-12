-- Revert: schemas/dashboard_public/tables/posts/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN type;
COMMIT;  

