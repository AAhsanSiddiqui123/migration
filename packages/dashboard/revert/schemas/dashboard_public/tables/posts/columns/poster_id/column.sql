-- Revert: schemas/dashboard_public/tables/posts/columns/poster_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN poster_id;
COMMIT;  

