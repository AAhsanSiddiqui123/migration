-- Deploy: schemas/dashboard_public/tables/actions/alterations/alt0000000756 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
