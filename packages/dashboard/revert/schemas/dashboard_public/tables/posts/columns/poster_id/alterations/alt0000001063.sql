-- Revert: schemas/dashboard_public/tables/posts/columns/poster_id/alterations/alt0000001063 from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN poster_id DROP NOT NULL;


COMMIT;  

