-- Deploy: schemas/dashboard_public/tables/user_actions/columns/rejected/alterations/alt0000000851 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/rejected/column

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN rejected SET DEFAULT false;
COMMIT;
