-- Verify: schemas/dashboard_memberships_public/tables/members/indexes/members_entity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.members', 'members_entity_id_idx');
COMMIT;  

