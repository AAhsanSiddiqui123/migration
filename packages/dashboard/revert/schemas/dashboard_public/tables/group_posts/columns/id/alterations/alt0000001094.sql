-- Revert: schemas/dashboard_public/tables/group_posts/columns/id/alterations/alt0000001094 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

