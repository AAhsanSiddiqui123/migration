-- Revert: schemas/dashboard_public/tables/group_posts/columns/id/alterations/alt0000001093 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

