-- Revert: schemas/dashboard_public/tables/form_questions/columns/owner_id/alterations/alt0000001351 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

