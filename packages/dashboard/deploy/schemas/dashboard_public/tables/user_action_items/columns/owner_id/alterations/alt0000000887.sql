-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/owner_id/alterations/alt0000000887 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
