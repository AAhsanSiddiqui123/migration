-- Deploy: schemas/dashboard_public/tables/user_saved_actions/columns/owner_id/alterations/alt0000001004 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table
-- requires: schemas/dashboard_public/tables/user_saved_actions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
