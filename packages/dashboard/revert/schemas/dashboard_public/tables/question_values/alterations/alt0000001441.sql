-- Revert: schemas/dashboard_public/tables/question_values/alterations/alt0000001441 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".question_values IS NULL;
COMMIT;  

