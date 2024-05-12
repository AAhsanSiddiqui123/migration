-- Revert: schemas/dashboard_public/tables/language_dictionary/columns/id/alterations/alt0000001289 from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

