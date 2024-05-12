-- Deploy: schemas/dashboard_public/tables/location_types/fixtures/fix0000001558 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;
INSERT INTO "dashboard_public".location_types (name, ref, description) VALUES ('venue', 'venue', 'venue'), ('locality', 'locality', 'locality'), ('postalcode', 'postalcode', 'postalcode'), ('neighborhood', 'neighborhood', 'neighborhood'), ('localadmin', 'localadmin', 'localadmin'), ('county', 'county', 'county'), ('campus', 'campus', 'campus'), ('constituency', 'constituency', 'constituency'), ('region', 'region', 'region'), ('intersection', 'intersection', 'intersection'), ('microhood', 'microhood', 'microhood'), ('macrohood', 'macrohood', 'macrohood'), ('macrocounty', 'macrocounty', 'macrocounty'), ('timezone', 'timezone', 'timezone'), ('borough', 'borough', 'borough'), ('marinearea', 'marinearea', 'marinearea'), ('country', 'country', 'country'), ('marketarea', 'marketarea', 'marketarea'), ('macroregion', 'macroregion', 'macroregion'), ('disputed', 'disputed', 'disputed'), ('dependency', 'dependency', 'dependency'), ('empire', 'empire', 'empire'), ('continent', 'continent', 'continent');
COMMIT;
