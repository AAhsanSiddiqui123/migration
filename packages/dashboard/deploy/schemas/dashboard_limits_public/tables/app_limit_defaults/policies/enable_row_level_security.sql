-- Deploy: schemas/dashboard_limits_public/tables/app_limit_defaults/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limit_defaults/table

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limit_defaults
    ENABLE ROW LEVEL SECURITY;
COMMIT;
