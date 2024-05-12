-- Revert: schemas/dashboard_public/tables/question_types/constraints/question_types_ref_num_key/alterations/alt0000001300 from pg

BEGIN;
COMMENT ON CONSTRAINT question_types_ref_num_key ON "dashboard_public".question_types IS NULL;
COMMIT;  

