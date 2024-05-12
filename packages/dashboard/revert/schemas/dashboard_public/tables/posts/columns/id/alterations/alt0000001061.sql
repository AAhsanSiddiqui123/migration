-- Revert: schemas/dashboard_public/tables/posts/columns/id/alterations/alt0000001061 from pg

BEGIN;


ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

