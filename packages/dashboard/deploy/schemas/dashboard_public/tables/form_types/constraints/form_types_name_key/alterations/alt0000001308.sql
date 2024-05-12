-- Deploy: schemas/dashboard_public/tables/form_types/constraints/form_types_name_key/alterations/alt0000001308 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/constraints/form_types_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT form_types_name_key ON "dashboard_public".form_types IS E'@omit';
COMMIT;
