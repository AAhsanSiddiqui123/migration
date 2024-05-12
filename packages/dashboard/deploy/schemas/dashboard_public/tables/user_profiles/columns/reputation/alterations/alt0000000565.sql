-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/reputation/alterations/alt0000000565 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table
-- requires: schemas/dashboard_public/tables/user_profiles/columns/reputation/column

BEGIN;

ALTER TABLE "dashboard_public".user_profiles 
    ALTER COLUMN reputation SET DEFAULT 0;
COMMIT;
