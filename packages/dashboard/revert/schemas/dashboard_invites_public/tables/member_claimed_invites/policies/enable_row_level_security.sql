-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_claimed_invites
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

