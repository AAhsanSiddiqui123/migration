-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/alterations/alt0000000167 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_level_requirements IS E'Requirements to achieve a level';
COMMIT;
