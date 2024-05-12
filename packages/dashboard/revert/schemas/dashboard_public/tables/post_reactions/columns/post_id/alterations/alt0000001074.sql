-- Revert: schemas/dashboard_public/tables/post_reactions/columns/post_id/alterations/alt0000001074 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN post_id DROP NOT NULL;


COMMIT;  

