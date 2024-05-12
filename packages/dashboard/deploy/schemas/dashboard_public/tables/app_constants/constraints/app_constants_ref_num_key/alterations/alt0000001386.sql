-- Deploy: schemas/dashboard_public/tables/app_constants/constraints/app_constants_ref_num_key/alterations/alt0000001386 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/constraints/app_constants_ref_num_key/constraint

BEGIN;
COMMENT ON CONSTRAINT app_constants_ref_num_key ON "dashboard_public".app_constants IS E'@omit';
COMMIT;
