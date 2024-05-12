-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/group_id/alterations/alt0000001114 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN group_id DROP DEFAULT;

COMMIT;  

