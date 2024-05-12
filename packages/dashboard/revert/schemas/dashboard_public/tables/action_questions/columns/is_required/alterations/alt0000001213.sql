-- Revert: schemas/dashboard_public/tables/action_questions/columns/is_required/alterations/alt0000001213 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_questions.is_required IS NULL;
COMMIT;  

