-- Revert: schemas/dashboard_public/tables/app_constants/constraints/app_constants_name_key/alterations/alt0000001385 from pg

BEGIN;
COMMENT ON CONSTRAINT app_constants_name_key ON "dashboard_public".app_constants IS NULL;
COMMIT;  

