-- Deploy: schemas/dashboard_public/tables/user_saved_actions/columns/id/alterations/alt0000000999 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table
-- requires: schemas/dashboard_public/tables/user_saved_actions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
