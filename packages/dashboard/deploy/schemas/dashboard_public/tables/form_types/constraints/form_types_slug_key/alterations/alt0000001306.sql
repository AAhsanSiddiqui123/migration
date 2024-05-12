-- Deploy: schemas/dashboard_public/tables/form_types/constraints/form_types_slug_key/alterations/alt0000001306 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/constraints/form_types_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT form_types_slug_key ON "dashboard_public".form_types IS E'@omit';
COMMIT;
