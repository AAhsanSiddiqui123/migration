-- Revert: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/alterations/alt0000001071 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN reacter_id DROP DEFAULT;

COMMIT;  

