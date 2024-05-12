-- Deploy: schemas/dashboard_public/tables/form_types/alterations/alt0000001302 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;

ALTER TABLE "dashboard_public".form_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
