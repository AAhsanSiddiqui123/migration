-- Deploy: schemas/dashboard_public/tables/action_goals/alterations/alt0000000782 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;

ALTER TABLE "dashboard_public".action_goals
    DISABLE ROW LEVEL SECURITY;
COMMIT;
