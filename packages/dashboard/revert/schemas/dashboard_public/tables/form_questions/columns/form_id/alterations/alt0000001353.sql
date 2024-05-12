-- Revert: schemas/dashboard_public/tables/form_questions/columns/form_id/alterations/alt0000001353 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN form_id DROP NOT NULL;


COMMIT;  

