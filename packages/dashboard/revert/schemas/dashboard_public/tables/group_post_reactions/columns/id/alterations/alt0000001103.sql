-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/id/alterations/alt0000001103 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

