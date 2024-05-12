-- Verify schemas/dashboard_invites_public/tables/claimed_invites/grants/grant_insert_update_delete_to_authenticated on pg

BEGIN;

  SELECT has_table_privilege('authenticated', 'dashboard_invites_public.claimed_invites', 'INSERT');
  SELECT has_table_privilege('authenticated', 'dashboard_invites_public.claimed_invites', 'UPDATE');
  SELECT has_table_privilege('authenticated', 'dashboard_invites_public.claimed_invites', 'DELETE');
  
ROLLBACK;
