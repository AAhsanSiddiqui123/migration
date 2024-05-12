-- Deploy: schemas/dashboard_public/tables/object_type_attributes/columns/id/alterations/alt0000000663 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
