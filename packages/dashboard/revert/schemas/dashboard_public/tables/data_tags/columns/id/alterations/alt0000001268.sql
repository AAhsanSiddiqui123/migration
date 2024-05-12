-- Revert: schemas/dashboard_public/tables/data_tags/columns/id/alterations/alt0000001268 from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

