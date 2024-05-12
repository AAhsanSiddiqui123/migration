-- Verify schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_invite_id  on pg

BEGIN;

SELECT invite_id FROM dashboard_invites_public.claimed_invites LIMIT 1;

ROLLBACK;
