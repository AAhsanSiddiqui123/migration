-- Deploy: schemas/dashboard_public/tables/object_type_attributes/alterations/alt0000000661 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes
    DISABLE ROW LEVEL SECURITY;
COMMIT;
