-- Deploy: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/name/alterations/alt0000000195 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/table
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/name/column

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limit_defaults 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
