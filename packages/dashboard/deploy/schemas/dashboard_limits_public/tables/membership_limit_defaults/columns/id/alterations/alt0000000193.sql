-- Deploy: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/id/alterations/alt0000000193 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/table
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limit_defaults 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
