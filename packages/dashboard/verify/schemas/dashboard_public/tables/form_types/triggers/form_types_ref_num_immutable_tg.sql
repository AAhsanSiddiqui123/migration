-- Verify: schemas/dashboard_public/tables/form_types/triggers/form_types_ref_num_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.form_types_ref_num_immutable_tg');
COMMIT;  

