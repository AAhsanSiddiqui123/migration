-- Deploy: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/id/alterations/alt0000000063 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limit_defaults/table
-- requires: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limit_defaults 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
