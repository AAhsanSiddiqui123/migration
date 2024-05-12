-- Revert: schemas/dashboard_public/tables/group_posts/columns/group_id/alterations/alt0000001098 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN group_id DROP NOT NULL;


COMMIT;  

