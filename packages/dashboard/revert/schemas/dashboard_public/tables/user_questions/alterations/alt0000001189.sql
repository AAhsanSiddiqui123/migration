-- Revert: schemas/dashboard_public/tables/user_questions/alterations/alt0000001189 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

