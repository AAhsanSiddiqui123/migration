-- Deploy: schemas/dashboard_public/tables/goals/alterations/alt0000000737 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;

ALTER TABLE "dashboard_public".goals
    DISABLE ROW LEVEL SECURITY;
COMMIT;
