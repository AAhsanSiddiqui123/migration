-- Revert: schemas/dashboard_public/tables/question_types/columns/field_type/alterations/alt0000001298 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".question_types.field_type IS NULL;
COMMIT;  

