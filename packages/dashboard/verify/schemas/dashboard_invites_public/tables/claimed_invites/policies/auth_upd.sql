-- Verify schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_invites_public.claimed_invites');


ROLLBACK;
