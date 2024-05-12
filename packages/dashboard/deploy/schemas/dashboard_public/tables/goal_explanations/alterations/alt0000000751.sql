-- Deploy: schemas/dashboard_public/tables/goal_explanations/alterations/alt0000000751 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
