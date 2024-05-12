-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;

ALTER TABLE "dashboard_public".goals
    ADD CONSTRAINT goals_name_key UNIQUE (name);
COMMIT;
