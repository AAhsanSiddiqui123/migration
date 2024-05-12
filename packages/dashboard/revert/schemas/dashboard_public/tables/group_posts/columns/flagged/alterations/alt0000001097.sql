-- Revert: schemas/dashboard_public/tables/group_posts/columns/flagged/alterations/alt0000001097 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN flagged DROP DEFAULT;

COMMIT;  

