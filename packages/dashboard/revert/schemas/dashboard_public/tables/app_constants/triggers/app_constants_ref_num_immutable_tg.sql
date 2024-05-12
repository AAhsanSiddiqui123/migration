-- Revert: schemas/dashboard_public/tables/app_constants/triggers/app_constants_ref_num_immutable_tg from pg

BEGIN;
DROP TRIGGER app_constants_ref_num_immutable_tg ON "dashboard_public".app_constants;
COMMIT;  

