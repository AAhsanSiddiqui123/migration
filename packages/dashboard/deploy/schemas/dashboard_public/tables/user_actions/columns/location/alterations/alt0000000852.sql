-- Deploy: schemas/dashboard_public/tables/user_actions/columns/location/alterations/alt0000000852 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/columns/location/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_actions.location IS E'this represents the location where the action was completed';
COMMIT;
