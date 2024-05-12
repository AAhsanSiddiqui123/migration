-- Revert: schemas/dashboard_public/tables/emails/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".emails FROM authenticated;
COMMIT;  

