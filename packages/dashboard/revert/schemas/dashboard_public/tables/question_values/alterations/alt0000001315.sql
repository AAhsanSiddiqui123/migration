-- Revert: schemas/dashboard_public/tables/question_values/alterations/alt0000001315 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

