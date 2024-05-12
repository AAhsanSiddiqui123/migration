-- Revert: schemas/dashboard_public/tables/forms/indexes/forms_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".forms_type_id_idx;
COMMIT;  

