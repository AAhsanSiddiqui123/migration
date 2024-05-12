-- Revert: schemas/dashboard_public/tables/emails/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".emails FROM authenticated;
COMMIT;  

