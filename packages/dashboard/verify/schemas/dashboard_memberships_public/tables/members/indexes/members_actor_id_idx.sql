-- Verify: schemas/dashboard_memberships_public/tables/members/indexes/members_actor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.members', 'members_actor_id_idx');
COMMIT;  

