-- Revert: schemas/dashboard_public/tables/action_questions/columns/is_before/alterations/alt0000001216 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_questions.is_before IS NULL;
COMMIT;  

