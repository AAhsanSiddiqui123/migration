-- Revert: schemas/dashboard_public/tables/post_comments/columns/commenter_id/alterations/alt0000001083 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN commenter_id DROP DEFAULT;

COMMIT;  

