-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/multiple/alterations/alt0000000484 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/multiple/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;
COMMIT;
