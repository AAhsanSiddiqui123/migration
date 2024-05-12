-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/reputation/alterations/alt0000000566 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/columns/reputation/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.reputation IS E'user reputation';
COMMIT;
