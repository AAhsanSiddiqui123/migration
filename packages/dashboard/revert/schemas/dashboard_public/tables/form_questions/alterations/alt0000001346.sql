-- Revert: schemas/dashboard_public/tables/form_questions/alterations/alt0000001346 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

