-- Deploy: schemas/dashboard_public/tables/emails/alterations/alt0000000430 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE "dashboard_public".emails
    DISABLE ROW LEVEL SECURITY;
COMMIT;
