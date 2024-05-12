-- Revert: schemas/dashboard_public/tables/question_types/indexes/question_types_ref_num_idx from pg

BEGIN;
DROP INDEX "dashboard_public".question_types_ref_num_idx;
COMMIT;  

