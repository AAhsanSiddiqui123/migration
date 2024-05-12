-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/expires_at/alterations/alt0000000485 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/expires_at/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN expires_at SET NOT NULL;
COMMIT;
