-- Revert: schemas/dashboard_public/tables/forms/indexes/forms_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".forms_owner_id_idx;
COMMIT;  

