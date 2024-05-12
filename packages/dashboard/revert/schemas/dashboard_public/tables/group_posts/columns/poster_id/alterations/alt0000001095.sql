-- Revert: schemas/dashboard_public/tables/group_posts/columns/poster_id/alterations/alt0000001095 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN poster_id DROP NOT NULL;


COMMIT;  

