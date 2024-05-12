-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/id/alterations/alt0000000560 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table
-- requires: schemas/dashboard_public/tables/user_profiles/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_profiles 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
