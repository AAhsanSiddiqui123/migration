-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_name_key/alterations/alt0000000749 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/constraints/goals_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT goals_name_key ON "dashboard_public".goals IS NULL;
COMMIT;
