-- Revert: schemas/dashboard_public/tables/action_questions/alterations/alt0000001207 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

