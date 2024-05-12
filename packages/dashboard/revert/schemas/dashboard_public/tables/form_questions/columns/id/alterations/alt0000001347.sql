-- Revert: schemas/dashboard_public/tables/form_questions/columns/id/alterations/alt0000001347 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

