-- Deploy: schemas/dashboard_limits_public/tables/app_limits/alterations/alt0000000058 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limits
    DISABLE ROW LEVEL SECURITY;
COMMIT;
