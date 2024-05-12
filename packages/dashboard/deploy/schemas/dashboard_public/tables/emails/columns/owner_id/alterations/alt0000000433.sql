-- Deploy: schemas/dashboard_public/tables/emails/columns/owner_id/alterations/alt0000000433 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
