-- Deploy: schemas/dashboard_public/tables/addresses/alterations/alt0000001638 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses
    DISABLE ROW LEVEL SECURITY;
COMMIT;
