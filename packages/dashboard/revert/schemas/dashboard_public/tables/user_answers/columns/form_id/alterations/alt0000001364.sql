-- Revert: schemas/dashboard_public/tables/user_answers/columns/form_id/alterations/alt0000001364 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN form_id DROP DEFAULT;

COMMIT;  

