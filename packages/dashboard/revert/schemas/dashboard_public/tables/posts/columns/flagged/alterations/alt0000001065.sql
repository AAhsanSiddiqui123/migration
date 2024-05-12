-- Revert: schemas/dashboard_public/tables/posts/columns/flagged/alterations/alt0000001065 from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN flagged DROP DEFAULT;

COMMIT;  

