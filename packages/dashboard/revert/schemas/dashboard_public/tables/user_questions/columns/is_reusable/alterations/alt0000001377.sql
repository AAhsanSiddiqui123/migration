-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_reusable/alterations/alt0000001377 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_questions.is_reusable IS NULL;
COMMIT;  

