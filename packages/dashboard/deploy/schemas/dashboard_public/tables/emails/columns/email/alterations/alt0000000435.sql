-- Deploy: schemas/dashboard_public/tables/emails/columns/email/alterations/alt0000000435 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/email/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN email SET NOT NULL;
COMMIT;
