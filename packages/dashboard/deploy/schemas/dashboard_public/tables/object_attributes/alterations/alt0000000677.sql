-- Deploy: schemas/dashboard_public/tables/object_attributes/alterations/alt0000000677 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_attributes
    DISABLE ROW LEVEL SECURITY;
COMMIT;
