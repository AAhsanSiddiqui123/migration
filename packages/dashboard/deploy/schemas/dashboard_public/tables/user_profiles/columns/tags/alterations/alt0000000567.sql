-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/tags/alterations/alt0000000567 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/columns/tags/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.tags IS E'user tags';
COMMIT;
