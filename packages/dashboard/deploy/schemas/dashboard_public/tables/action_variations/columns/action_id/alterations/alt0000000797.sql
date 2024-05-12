-- Deploy: schemas/dashboard_public/tables/action_variations/columns/action_id/alterations/alt0000000797 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table
-- requires: schemas/dashboard_public/tables/action_variations/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_variations 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;
