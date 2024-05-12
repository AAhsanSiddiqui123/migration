-- Revert: schemas/dashboard_public/tables/question_types/constraints/question_types_name_key/alterations/alt0000001301 from pg

BEGIN;
COMMENT ON CONSTRAINT question_types_name_key ON "dashboard_public".question_types IS NULL;
COMMIT;  

