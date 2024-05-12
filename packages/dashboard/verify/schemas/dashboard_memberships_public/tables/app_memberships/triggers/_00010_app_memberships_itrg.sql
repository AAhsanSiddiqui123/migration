-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/triggers/_00010_app_memberships_itrg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public._00010_app_memberships_itrg');
COMMIT;  

