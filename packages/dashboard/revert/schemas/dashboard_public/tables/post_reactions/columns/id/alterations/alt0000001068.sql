-- Revert: schemas/dashboard_public/tables/post_reactions/columns/id/alterations/alt0000001068 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

