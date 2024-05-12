-- Revert: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    DROP CONSTRAINT post_reactions_pkey;

COMMIT;  

