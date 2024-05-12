-- Deploy: schemas/dashboard_status_public/tables/app_achievements/alterations/alt0000000153 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_achievements IS E'This table represents the users progress for particular level requirements, tallying the total count. This table is updated via triggers and should not be updated maually.';
COMMIT;
