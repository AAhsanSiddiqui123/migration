-- Revert: schemas/dashboard_public/tables/group_post_reactions/constraints/group_post_reactions_group_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    DROP CONSTRAINT group_post_reactions_group_id_fkey;

COMMIT;  

