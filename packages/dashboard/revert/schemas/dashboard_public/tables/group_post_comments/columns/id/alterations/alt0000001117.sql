-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/id/alterations/alt0000001117 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

