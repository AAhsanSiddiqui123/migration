-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/reacter_id/alterations/alt0000001105 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN reacter_id DROP DEFAULT;

COMMIT;  

