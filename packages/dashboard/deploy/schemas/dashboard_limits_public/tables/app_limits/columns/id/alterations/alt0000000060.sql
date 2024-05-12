-- Deploy: schemas/dashboard_limits_public/tables/app_limits/columns/id/alterations/alt0000000060 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limits/table
-- requires: schemas/dashboard_limits_public/tables/app_limits/columns/id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limits 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
