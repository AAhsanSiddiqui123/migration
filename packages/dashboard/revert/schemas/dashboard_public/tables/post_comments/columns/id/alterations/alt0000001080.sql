-- Revert: schemas/dashboard_public/tables/post_comments/columns/id/alterations/alt0000001080 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

