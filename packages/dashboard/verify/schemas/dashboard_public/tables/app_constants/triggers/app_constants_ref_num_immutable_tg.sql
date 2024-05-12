-- Verify: schemas/dashboard_public/tables/app_constants/triggers/app_constants_ref_num_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.app_constants_ref_num_immutable_tg');
COMMIT;  

