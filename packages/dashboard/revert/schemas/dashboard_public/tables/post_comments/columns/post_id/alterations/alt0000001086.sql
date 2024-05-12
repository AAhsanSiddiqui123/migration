-- Revert: schemas/dashboard_public/tables/post_comments/columns/post_id/alterations/alt0000001086 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN post_id DROP NOT NULL;


COMMIT;  

