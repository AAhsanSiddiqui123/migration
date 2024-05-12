-- Deploy: schemas/dashboard_public/tables/objects/columns/id/alterations/alt0000000653 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
