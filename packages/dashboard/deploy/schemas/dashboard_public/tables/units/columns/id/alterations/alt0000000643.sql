-- Deploy: schemas/dashboard_public/tables/units/columns/id/alterations/alt0000000643 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".units 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
