-- Revert: schemas/dashboard_public/tables/posts/columns/id/alterations/alt0000001062 from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

