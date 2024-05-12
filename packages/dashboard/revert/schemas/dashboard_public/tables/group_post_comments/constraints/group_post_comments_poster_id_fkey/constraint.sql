-- Revert: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_poster_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments 
    DROP CONSTRAINT group_post_comments_poster_id_fkey;

COMMIT;  

