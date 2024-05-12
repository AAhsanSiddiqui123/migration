-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/expires_at/alterations/alt0000000506 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/expires_at/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';
COMMIT;
