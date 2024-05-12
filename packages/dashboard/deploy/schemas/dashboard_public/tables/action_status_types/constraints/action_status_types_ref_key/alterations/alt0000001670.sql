-- Deploy: schemas/dashboard_public/tables/action_status_types/constraints/action_status_types_ref_key/alterations/alt0000001670 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/constraints/action_status_types_ref_key/constraint

BEGIN;
COMMENT ON CONSTRAINT action_status_types_ref_key ON "dashboard_public".action_status_types IS E'@omit';
COMMIT;
