-- Revert: schemas/dashboard_public/tables/posts/columns/flagged/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN flagged;
COMMIT;  

