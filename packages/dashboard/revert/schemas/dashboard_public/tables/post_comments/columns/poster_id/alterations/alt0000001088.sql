-- Revert: schemas/dashboard_public/tables/post_comments/columns/poster_id/alterations/alt0000001088 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN poster_id DROP NOT NULL;


COMMIT;  

