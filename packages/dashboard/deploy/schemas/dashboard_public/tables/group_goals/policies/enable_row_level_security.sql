-- Deploy: schemas/dashboard_public/tables/group_goals/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals
    ENABLE ROW LEVEL SECURITY;
COMMIT;
