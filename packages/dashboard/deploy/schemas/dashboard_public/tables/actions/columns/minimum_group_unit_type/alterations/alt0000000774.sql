-- Deploy: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_type/alterations/alt0000000774 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.minimum_group_unit_type IS E'if no unit available';
COMMIT;
