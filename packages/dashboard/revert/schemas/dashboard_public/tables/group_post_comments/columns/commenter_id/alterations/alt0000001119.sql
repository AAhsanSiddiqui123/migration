-- Revert: schemas/dashboard_public/tables/group_post_comments/columns/commenter_id/alterations/alt0000001119 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    ALTER COLUMN commenter_id DROP NOT NULL;


COMMIT;  

