-- Deploy: schemas/dashboard_public/tables/object_types/columns/id/alterations/alt0000000648 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".object_types 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
