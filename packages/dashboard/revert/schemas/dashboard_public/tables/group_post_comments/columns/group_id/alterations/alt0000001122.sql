-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/group_id/alterations/alt0000001122 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN group_id DROP NOT NULL;


COMMIT;  

