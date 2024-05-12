-- Deploy: schemas/dashboard_public/tables/action_impacts/alterations/alt0000000965 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;

ALTER TABLE "dashboard_public".action_impacts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
