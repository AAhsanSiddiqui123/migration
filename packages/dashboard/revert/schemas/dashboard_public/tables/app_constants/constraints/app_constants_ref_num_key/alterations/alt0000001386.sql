-- Revert: schemas/dashboard_public/tables/app_constants/constraints/app_constants_ref_num_key/alterations/alt0000001386 from pg

BEGIN;
COMMENT ON CONSTRAINT app_constants_ref_num_key ON "dashboard_public".app_constants IS NULL;
COMMIT;  

