-- Deploy: schemas/dashboard_public/tables/goal_explanations/columns/id/alterations/alt0000000752 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goal_explanations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
