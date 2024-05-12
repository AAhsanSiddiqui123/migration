-- Deploy: schemas/dashboard_public/tables/user_actions/alterations/alt0000000843 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_actions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
