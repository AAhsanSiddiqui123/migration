-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/constraints/app_level_requirements_name_level_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements
    ADD CONSTRAINT app_level_requirements_name_level_key UNIQUE (name,level);
COMMIT;
