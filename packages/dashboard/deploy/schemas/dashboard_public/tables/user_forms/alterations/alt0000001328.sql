-- Deploy: schemas/dashboard_public/tables/user_forms/alterations/alt0000001328 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table

BEGIN;

ALTER TABLE "dashboard_public".user_forms
    DISABLE ROW LEVEL SECURITY;
COMMIT;
