-- Revert: schemas/dashboard_public/tables/group_posts/constraints/group_posts_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts 
    DROP CONSTRAINT group_posts_pkey;

COMMIT;  

