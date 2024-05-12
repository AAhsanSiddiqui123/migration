-- Deploy: schemas/dashboard_public/tables/user_viewed_actions/alterations/alt0000001010 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_viewed_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_viewed_actions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
