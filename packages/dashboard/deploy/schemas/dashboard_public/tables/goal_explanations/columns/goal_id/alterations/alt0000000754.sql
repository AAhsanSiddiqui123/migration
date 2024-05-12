-- Deploy: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/alterations/alt0000000754 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/column

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations 
    ALTER COLUMN goal_id SET NOT NULL;
COMMIT;
