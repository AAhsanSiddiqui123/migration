-- Revert: schemas/dashboard_public/tables/user_answers/columns/user_form_id/alterations/alt0000001362 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN user_form_id DROP NOT NULL;


COMMIT;  

