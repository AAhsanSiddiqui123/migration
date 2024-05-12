-- Deploy: schemas/dashboard_public/tables/groups/alterations/alt0000000270 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;

ALTER TABLE "dashboard_public".groups
    DISABLE ROW LEVEL SECURITY;
COMMIT;
