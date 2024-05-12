-- Deploy: schemas/dashboard_public/tables/forms/alterations/alt0000001321 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms
    DISABLE ROW LEVEL SECURITY;
COMMIT;
