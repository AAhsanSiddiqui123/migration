-- Revert: schemas/dashboard_public/tables/form_types/indexes/form_types_ref_num_idx from pg

BEGIN;
DROP INDEX "dashboard_public".form_types_ref_num_idx;
COMMIT;  

