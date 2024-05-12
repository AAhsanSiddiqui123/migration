-- Deploy: schemas/dashboard_public/tables/quantities/alterations/alt0000000638 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities
    DISABLE ROW LEVEL SECURITY;
COMMIT;
