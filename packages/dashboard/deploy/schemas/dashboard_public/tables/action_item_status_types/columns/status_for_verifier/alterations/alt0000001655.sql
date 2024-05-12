-- Deploy: schemas/dashboard_public/tables/action_item_status_types/columns/status_for_verifier/alterations/alt0000001655 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_status_types/table
-- requires: schemas/dashboard_public/tables/action_item_status_types/columns/status_for_verifier/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_status_types 
    ALTER COLUMN status_for_verifier SET DEFAULT true;
COMMIT;
