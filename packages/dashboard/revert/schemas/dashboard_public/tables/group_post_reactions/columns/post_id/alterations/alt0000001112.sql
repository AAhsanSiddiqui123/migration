-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/post_id/alterations/alt0000001112 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN post_id DROP NOT NULL;


COMMIT;  

