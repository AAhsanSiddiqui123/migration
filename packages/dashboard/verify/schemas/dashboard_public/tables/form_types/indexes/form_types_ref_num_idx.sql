-- Verify: schemas/dashboard_public/tables/form_types/indexes/form_types_ref_num_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.form_types', 'form_types_ref_num_idx');
COMMIT;  

