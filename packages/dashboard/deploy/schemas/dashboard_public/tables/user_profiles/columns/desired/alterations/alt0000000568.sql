-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/desired/alterations/alt0000000568 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/columns/desired/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.desired IS E'user wanted tags';
COMMIT;
