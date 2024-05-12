-- Revert: schemas/dashboard_public/tables/question_types/columns/field_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN field_type;
COMMIT;  

