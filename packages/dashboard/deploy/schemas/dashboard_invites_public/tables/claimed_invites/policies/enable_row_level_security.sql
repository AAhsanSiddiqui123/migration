-- Deploy: schemas/dashboard_invites_public/tables/claimed_invites/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".claimed_invites
    ENABLE ROW LEVEL SECURITY;
COMMIT;
