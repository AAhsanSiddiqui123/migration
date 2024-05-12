-- Revert: schemas/dashboard_public/tables/action_questions/constraints/action_questions_action_id_fkey/alterations/alt0000001218 from pg

BEGIN;
COMMENT ON CONSTRAINT action_questions_action_id_fkey ON "dashboard_public".action_questions IS NULL;
COMMIT;  

