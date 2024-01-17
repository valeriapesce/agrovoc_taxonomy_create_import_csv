_BETA VERSION, DO NOT USE_

The “**AIMS AGROVOC import via CSV**” module (agrovoc_taxonomy_create_import_csv) will create a new “FAO AGROVOC” taxonomy (fao_aims_agrovoc) in Drupal and import data from AGROVOC in the 6 FAO official languages from CSV files resulting from SPARQL queries (the module will include a shell file for updating the CSVs from the SPARQL endpoint in one go via command line).

Instructions:
- Install the module and the requried dependencies
- Execute the update_sources_from_sparql.sh script in the module root folder. This will make the up-to-date CSV files with AGROVOC data ready for import in the module folder under sources/.
- Execute the Migrate drush command from the Drupal website root: drush migrate:import --group=agrovoc_import

- Every time a new version of AGROVOC is released, re-execute the update_sources_from_sparql.sh script in the module folder and then execute the Migrate drush command from the Drupal website root: drush migrate:import --group=agrovoc_import

