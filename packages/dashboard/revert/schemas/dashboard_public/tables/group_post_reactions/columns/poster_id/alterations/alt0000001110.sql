-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/poster_id/alterations/alt0000001110 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN poster_id DROP NOT NULL;


COMMIT;  

