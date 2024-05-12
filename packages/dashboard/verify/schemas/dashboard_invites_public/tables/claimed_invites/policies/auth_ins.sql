-- Verify schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_ins  on pg

BEGIN;

SELECT verify_policy ('auth_ins', 'dashboard_invites_public.claimed_invites');


ROLLBACK;
