-- Verify: schemas/dashboard_memberships_public/tables/memberships/triggers/_99999_groups_mbr_utrg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._99999_groups_mbr_utrg');
COMMIT;  

