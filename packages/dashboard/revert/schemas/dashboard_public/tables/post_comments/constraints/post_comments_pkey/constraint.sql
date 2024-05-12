-- Revert: schemas/dashboard_public/tables/post_comments/constraints/post_comments_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments 
    DROP CONSTRAINT post_comments_pkey;

COMMIT;  

