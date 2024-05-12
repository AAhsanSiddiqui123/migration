-- Verify: schemas/dashboard_memberships_public/tables/memberships/triggers/_00010_memberships_utrg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._00010_memberships_utrg');
COMMIT;  

