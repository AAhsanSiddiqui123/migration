-- Deploy: schemas/dashboard_public/tables/action_status_types/fixtures/fix0000001671 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table

BEGIN;
INSERT INTO "dashboard_public".action_status_types (name, ref, description) VALUES ('Rejected', 'REJECTED', 'rejected'), ('Verified', 'VERIFIED', 'verified'), ('Completed', 'COMPLETED', 'completed');
COMMIT;
