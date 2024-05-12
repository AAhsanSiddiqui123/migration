-- Deploy: schemas/dashboard_public/tables/action_impacts/columns/impact_id/alterations/alt0000000970 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table
-- requires: schemas/dashboard_public/tables/action_impacts/columns/impact_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN impact_id SET NOT NULL;
COMMIT;
