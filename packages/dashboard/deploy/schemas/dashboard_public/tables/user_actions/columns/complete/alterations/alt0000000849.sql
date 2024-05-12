-- Deploy: schemas/dashboard_public/tables/user_actions/columns/complete/alterations/alt0000000849 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/complete/column

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN complete SET DEFAULT false;
COMMIT;
