-- Deploy: schemas/dashboard_public/tables/emails/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE "dashboard_public".emails
    ENABLE ROW LEVEL SECURITY;
COMMIT;
