-- Deploy: schemas/dashboard_public/tables/user_pass_actions/columns/id/alterations/alt0000000988 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table
-- requires: schemas/dashboard_public/tables/user_pass_actions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
