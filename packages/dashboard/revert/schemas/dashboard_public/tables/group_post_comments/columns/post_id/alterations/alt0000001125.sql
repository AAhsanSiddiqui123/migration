-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/post_id/alterations/alt0000001125 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN post_id DROP NOT NULL;


COMMIT;  

