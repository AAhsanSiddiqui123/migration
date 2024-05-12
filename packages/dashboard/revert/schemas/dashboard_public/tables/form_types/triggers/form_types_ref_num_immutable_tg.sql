-- Revert: schemas/dashboard_public/tables/form_types/triggers/form_types_ref_num_immutable_tg from pg

BEGIN;
DROP TRIGGER form_types_ref_num_immutable_tg ON "dashboard_public".form_types;
COMMIT;  

