-- Revert: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/alterations/alt0000001070 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN reacter_id DROP NOT NULL;


COMMIT;  

