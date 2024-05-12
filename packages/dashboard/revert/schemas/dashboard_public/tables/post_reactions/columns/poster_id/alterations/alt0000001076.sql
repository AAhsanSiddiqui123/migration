-- Revert: schemas/dashboard_public/tables/post_reactions/columns/poster_id/alterations/alt0000001076 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN poster_id DROP NOT NULL;


COMMIT;  

