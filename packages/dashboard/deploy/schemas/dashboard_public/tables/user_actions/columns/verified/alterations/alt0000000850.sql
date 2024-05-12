-- Deploy: schemas/dashboard_public/tables/user_actions/columns/verified/alterations/alt0000000850 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/verified/column

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN verified SET DEFAULT false;
COMMIT;
