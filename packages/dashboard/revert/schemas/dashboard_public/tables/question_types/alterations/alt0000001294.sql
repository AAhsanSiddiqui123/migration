-- Revert: schemas/dashboard_public/tables/question_types/alterations/alt0000001294 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

