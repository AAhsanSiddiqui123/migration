-- Revert: schemas/dashboard_public/tables/posts/constraints/posts_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    DROP CONSTRAINT posts_pkey;

COMMIT;  

