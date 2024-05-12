-- Deploy: schemas/dashboard_public/tables/group_goals/alterations/alt0000001142 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals
    DISABLE ROW LEVEL SECURITY;
COMMIT;
