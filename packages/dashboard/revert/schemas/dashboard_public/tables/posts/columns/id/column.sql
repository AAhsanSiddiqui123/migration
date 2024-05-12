-- Revert: schemas/dashboard_public/tables/posts/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN id;
COMMIT;  

