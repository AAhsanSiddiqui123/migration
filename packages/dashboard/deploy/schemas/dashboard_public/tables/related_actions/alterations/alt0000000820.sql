-- Deploy: schemas/dashboard_public/tables/related_actions/alterations/alt0000000820 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;

ALTER TABLE "dashboard_public".related_actions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
