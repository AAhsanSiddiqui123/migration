-- Verify schemas/dashboard_invites_public/tables/claimed_invites/alterations/add_foreign_key_invite_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_invites_public.claimed_invites', 'fk_dashboard_invites_public_claimed_invites_invite_id');

ROLLBACK;
