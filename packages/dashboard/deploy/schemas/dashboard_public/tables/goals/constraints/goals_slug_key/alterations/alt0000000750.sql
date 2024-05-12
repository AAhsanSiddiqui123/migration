-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_slug_key/alterations/alt0000000750 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/constraints/goals_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT goals_slug_key ON "dashboard_public".goals IS NULL;
COMMIT;
