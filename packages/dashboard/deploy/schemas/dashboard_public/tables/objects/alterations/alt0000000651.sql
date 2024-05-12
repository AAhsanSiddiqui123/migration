-- Deploy: schemas/dashboard_public/tables/objects/alterations/alt0000000651 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;

ALTER TABLE "dashboard_public".objects
    DISABLE ROW LEVEL SECURITY;
COMMIT;
