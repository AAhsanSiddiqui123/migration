-- Revert: schemas/dashboard_public/tables/user_questions/constraints/user_questions_owner_id_fkey/alterations/alt0000001194 from pg

BEGIN;
COMMENT ON CONSTRAINT user_questions_owner_id_fkey ON "dashboard_public".user_questions IS NULL;
COMMIT;  

