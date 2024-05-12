-- Revert: schemas/dashboard_public/tables/question_templates/alterations/alt0000001184 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

