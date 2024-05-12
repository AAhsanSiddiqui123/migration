-- Revert: schemas/dashboard_public/tables/posts/constraints/posts_poster_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    DROP CONSTRAINT posts_poster_id_fkey;

COMMIT;  

