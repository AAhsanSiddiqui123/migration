-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_99990_group_memberships_owners_chk on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._99990_group_memberships_owners_chk');
COMMIT;  

