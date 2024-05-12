-- Revert: schemas/dashboard_public/tables/user_questions/alterations/alt0000001430 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".user_questions IS NULL;
COMMIT;  

