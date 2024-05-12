-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/poster_id/alterations/alt0000001131 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN poster_id DROP DEFAULT;

COMMIT;  

