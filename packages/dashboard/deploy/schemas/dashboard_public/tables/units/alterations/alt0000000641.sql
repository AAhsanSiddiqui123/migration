-- Deploy: schemas/dashboard_public/tables/units/alterations/alt0000000641 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;

ALTER TABLE "dashboard_public".units
    DISABLE ROW LEVEL SECURITY;
COMMIT;
