-- Verify schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_invites_public.claimed_invites');


ROLLBACK;
