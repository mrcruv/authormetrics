# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ { name: "Star Wars"}, { name: "Lord of the Rings"}])
#   Character.create(name: "Luke", movie: movies.first)



authors=Author.create([
    {
       author_id: "kq0NYnMAAAAJ",                         
        name: "Mike Robb",                                 
        affiliations: "Chemistry Department Imperial College",
        interests:                                         
        "[{:title=>\"Computational chemistry\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Acomputational_chemistry\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:computational_chemistry\"}, {:title=>\"Theoretical Chemistry\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Atheoretical_chemistry\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:theoretical_chemistry\"}, {:title=>\"conical intersections\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aconical_intersections\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:conical_intersections\"}, {:title=>\"non adiabatic dynamics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anon_adiabatic_dynamics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:non_adiabatic_dynamics\"}]",
        cited_by_id:3
    },
    {
        author_id: "ZjfgPLMAAAAJ",
        name: "Mike A. Nalls",
        affiliations: "Founder/consultant with Data Tecnica International + Data science lead at NIH's Center for …",
        interests:
        "[{:title=>\"statistical genetics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Astatistical_genetics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:statistical_genetics\"}, {:title=>\"neurodegeneration\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aneurodegeneration\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:neurodegeneration\"}, {:title=>\"data science\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adata_science\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:data_science\"}, {:title=>\"biostatistics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiostatistics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biostatistics\"}, {:title=>\"genomics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Agenomics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:genomics\"}]",
        cited_by_id:4
    },
    {
        author_id: "RIg9DVEAAAAJ",
        name: "mike wright",
        affiliations: "imperial college",
        interests:
        "[{:title=>\"entrepreneurship\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentrepreneurship\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entrepreneurship\"}]",

        cited_by_id:30
    },
    {
        author_id: "R8PPdbQAAAAJ",
        name: "Mike Lean (MEJ Lean)",
        affiliations: "Professor of Human Nutrition, University of Glasgow",
        interests:
        "[{:title=>\"Food\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afood\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:food\"}, {:title=>\"Nutrition\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anutrition\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:nutrition\"}, {:title=>\"Obesity\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aobesity\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:obesity\"}, {:title=>\"Diabetes\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adiabetes\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:diabetes\"}, {:title=>\"CHD\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Achd\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:chd\"}]",
        cited_by_id: 5
    },
    {
        author_id: "iXjCKTgAAAAJ",
        name: "prof dr ir Mike SM Jetten",
        affiliations: "Radboud University Nijmegen, Microbiology, TU Delft, anammox, Netherlands",
        interests:
        "[{:title=>\"anaerobic microbiology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aanaerobic_microbiology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:anaerobic_microbiology\"}, {:title=>\"nitrogen cycle\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anitrogen_cycle\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:nitrogen_cycle\"}, {:title=>\"methane archaea\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amethane_archaea\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:methane_archaea\"}, {:title=>\"anammox\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aanammox\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:anammox\"}]",
   
        cited_by_id:6
    },
    {
        author_id: "L9lS9_AAAAAJ",
        name: "Mike Schuster",
        affiliations: "Two Sigma",
        interests:
        "[{:title=>\"machine learning\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amachine_learning\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:machine_learning\"}, {:title=>\"neural networks\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aneural_networks\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:neural_networks\"}, {:title=>\"deep learning\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adeep_learning\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:deep_learning\"}, {:title=>\"reinforcement learning\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Areinforcement_learning\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:reinforcement_learning\"}]",

        cited_by_id:7
    },
    {
        author_id: "wT4V7isAAAAJ",
        name: "Mike Wingfield",
        affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        interests:
        "[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]",
     
        cited_by_id:8
    },
    {
        author_id: "z1Kz8gQAAAAJ",
        name: "Mike W. Peng",
        affiliations: "Jindal Chair of Global Strategy, University of Texas at Dallas",
        interests:
         "[{:title=>\"International Business\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Ainternational_business\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:international_business\"}, {:title=>\"Global Strategy\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aglobal_strategy\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:global_strategy\"}, {:title=>\"Strategic Management\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Astrategic_management\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:strategic_management\"}]",
    
        cited_by_id:9
    },
    {
        author_id: "9zEuqoIAAAAJ",
        name: "Mike Tyers",
        affiliations: "Institute for Research in Immunology and Cancer, University of Montreal",
        interests: nil,
        cited_by_id:10
    },
    {
        author_id: "-8IsASwAAAAJ",
        name: "Mike Hulme",
        affiliations: "Professor of Human Geography, University of Cambridge",
        interests:
        "[{:title=>\"Climate Change\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aclimate_change\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:climate_change\"}, {:title=>\"Climate History\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aclimate_history\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:climate_history\"}]",
     
        cited_by_id:11
    },
    {
        author_id: "wrlU53gAAAAJ",
        name: "Young Min Jhon",
        affiliations: "Korea Institute of Science and technology",
        interests: nil,
     
        cited_by_id: 13
    },
    {
        author_id: "ls4aMEQAAAAJ",
        name: "Deok-Young JHON",
        affiliations: "Division of Food and Nutrition, Chonnam National University",
        interests:
        "[{:title=>\"food microbes\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afood_microbes\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:food_microbes\"}, {:title=>\"food safety\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afood_safety\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:food_safety\"}, {:title=>\"food enzymes\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afood_enzymes\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:food_enzymes\"}, {:title=>\"fermented foods\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afermented_foods\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:fermented_foods\"}]",
      
        cited_by_id: 14
    },
    {
        author_id: "fipll9oAAAAJ",
        name: "Jhon Jairo Olaya Florez",
        affiliations: "Profesor Titular, Universidad Nacional de Colombia",
        interests:
        "[{:title=>\"Ciencia e Ingenierìa de Materiales\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aciencia_e_ingenier%C3%ACa_de_materiales\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:ciencia_e_ingenier%C3%ACa_de_materiales\"}, {:title=>\"Ciencia y Tecnologìa de Superficies\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aciencia_y_tecnolog%C3%ACa_de_superficies\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:ciencia_y_tecnolog%C3%ACa_de_superficies\"}]",
     
        cited_by_id: 15
    },
    {
        author_id: "LFKbvaIAAAAJ",
        name: "Jhon uriarte prieto",
        affiliations: "Estudiante Informática y sistemas",
        interests:
        "[{:title=>\"Seguridad Informática\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aseguridad_inform%C3%A1tica\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:seguridad_inform%C3%A1tica\"}]",
      
        cited_by_id: 16
    },
    {
        author_id: "qjRUfu4AAAAJ",
        name: "Jhon Alejandro Marín Peláez",
        affiliations: "Universidad Tecnológica de Pereira",
        interests:
        "[{:title=>\"Ciencias de la Educación\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aciencias_de_la_educaci%C3%B3n\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:ciencias_de_la_educaci%C3%B3n\"}, {:title=>\"Lenguaje\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Alenguaje\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:lenguaje\"}]",
   
        cited_by_id: 17
    },
    {
        author_id: "dHQVgmMAAAAJ",
        name: "Jhon Enriquez",
        affiliations: "Princeton University",
        interests:
        "[{:title=>\"unifie fieldtheory\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aunifie_fieldtheory\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:unifie_fieldtheory\"}]",
     
        cited_by_id: 18
    },
    {
        author_id: "gHLOPtIAAAAJ",
        name: "Jhon James Mora Rodriguez",
        affiliations: "Full Professor of Economics, Universidad Icesi",
        interests:
        "[{:title=>\"Labor Economics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Alabor_economics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:labor_economics\"}, {:title=>\"Economics of Education\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aeconomics_of_education\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:economics_of_education\"}, {:title=>\"MIcroeconometrics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Am_icroeconometrics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:microeconometrics\"}]",
    
        cited_by_id: 20
    },
    {
        author_id: "rL3N4l4AAAAJ",
        name: "Jhon Fredy Pérez Torres",
        affiliations: "Universidad Industrial de Santander",
        interests:
        "[{:title=>\"Dinámica Cuántica Molecular\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adin%C3%A1mica_cu%C3%A1ntica_molecular\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:din%C3%A1mica_cu%C3%A1ntica_molecular\"}]",
     
        cited_by_id: 21
    },
    {
        author_id: "xVvyb1gAAAAJ",
        name: "Michael Karin",
        affiliations: "Professor of Pharmacology and Pathology,UCSD,School of Medicine",
        interests:
        "[{:title=>\"Molecular Biology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amolecular_biology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:molecular_biology\"}, {:title=>\"Immunology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aimmunology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:immunology\"}, {:title=>\"Cancer Biology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Acancer_biology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:cancer_biology\"}, {:title=>\"Signal Transduction\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asignal_transduction\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:signal_transduction\"}]",
     
        cited_by_id: 24
    },
    {
        author_id: "AAhsht0AAAAJ",
        name: "Michael Rutter",
        affiliations: "Professor of Developmental Psychopathology, King's College London",
        interests:
        "[{:title=>\"child psychiatry\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Achild_psychiatry\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:child_psychiatry\"}, {:title=>\"psychiatric genetics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Apsychiatric_genetics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:psychiatric_genetics\"}, {:title=>\"developmental psychopathology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adevelopmental_psychopathology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:developmental_psychopathology\"}]",
      
        cited_by_id: 25
    },
    {
        author_id: "TWTQCX8AAAAJ",
        name: "Michael Torres Herrera",
        affiliations: "Universidad San Ignacio de Loyola",
        interests:
        "[{:title=>\"ingenieria\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aingenieria\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:ingenieria\"}]",
      
        cited_by_id: 26
    },
    {
        author_id: "s5RXOk4AAAAJ",
        name: "Michael Schmitt",
        affiliations: "Northwestern University",
        interests:
        "[{:title=>\"Particle Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aparticle_physics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:particle_physics\"}, {:title=>\"Statistical Methods\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Astatistical_methods\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:statistical_methods\"}]",
       
        cited_by_id: 27
    },
    {
        author_id: "V7AleF4AAAAJ",
        name: "Michael G. Marmot",
        affiliations: "Professor of Epidemiology, University College London",
        interests:
        "[{:title=>\"Social determinants of health\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asocial_determinants_of_health\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:social_determinants_of_health\"}]",
        
        cited_by_id: 28
    },
    {
        author_id: "ZNmeRNIAAAAJ",
        name: "Michael J. Frisch",
        affiliations: "Gaussian, Inc.",
        interests: nil,
     
        cited_by_id: 29
    },
    {
        author_id: "U0EiqiUAAAAJ",
        name: "Emma Witt",
        affiliations: "Department of Biostatistics and Epidemiology, Auckland University of Technology",
        interests:
        "[{:title=>\"data management\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adata_management\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:data_management\"}, {:title=>\"clinical trials\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aclinical_trials\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:clinical_trials\"}, {:title=>\"neuropsychology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aneuropsychology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:neuropsychology\"}, {:title=>\"psychology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Apsychology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:psychology\"}, {:title=>\"epidemiolgy\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aepidemiolgy\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:epidemiolgy\"}]",
       
        cited_by_id: 32
    },
    {
        author_id: "B0h47WAAAAAJ",
        name: "Michael Graetzel",
        affiliations: "Professor, EPFL",
        interests:
        "[{:title=>\"Solar energy conversion\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asolar_energy_conversion\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:solar_energy_conversion\"}]",
     
        cited_by_id: 23
    },
    {
        author_id: "QJ1yWLoAAAAJ",
        name: "Myung Jhon",
        affiliations: "Carnegie Mellon University",
        interests:
        "[{:title=>\"rheology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Arheology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:rheology\"}, {:title=>\"tribology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Atribology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:tribology\"}, {:title=>\"surface\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asurface\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:surface\"}, {:title=>\"modeling\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amodeling\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:modeling\"}, {:title=>\"perfluoropolyether(PFPE)\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aperfluoropolyether_pfpe\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:perfluoropolyether_pfpe\"}]",
      
        cited_by_id: 12
    },
    {
        author_id: "xoZ6gBUAAAAJ",
        name: "Junie Jhon M. Vequizo",
        affiliations: "RISM, Shinshu University",
        interests:
        "[{:title=>\"thin films\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Athin_films\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:thin_films\"}, {:title=>\"semiconductors\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asemiconductors\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:semiconductors\"}, {:title=>\"solar cells\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Asolar_cells\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:solar_cells\"}, {:title=>\"photocatalyst\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aphotocatalyst\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:photocatalyst\"}, {:title=>\"electrochemistry\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aelectrochemistry\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:electrochemistry\"}]",
       
        cited_by_id: 19
    },
    {
        author_id: "g9WIbh0AAAAJ",
        name: "Michael E. Porter",
        affiliations: "Bishop William Lawrence University Professor, Harvard Business School",
        interests:
         "[{:title=>\"Competitive Strategy\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Acompetitive_strategy\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:competitive_strategy\"}, {:title=>\"Digital Transformation\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adigital_transformation\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:digital_transformation\"}, {:title=>\"Economic Development\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aeconomic_development\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:economic_development\"}, {:title=>\"Health Care\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Ahealth_care\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:health_care\"}, {:title=>\"US Political System\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aus_political_system\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:us_political_system\"}]",
    
        cited_by_id: 22 
    },
    {
        author_id: "UVvGrbcAAAAJ",
        name: "Tobin Marks",
        affiliations: "Charles E. and Emma H. Morrison Professor of Chemistry, Northwestern University",
        interests:
        "[{:title=>\"Organometallic Chemistry\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aorganometallic_chemistry\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:organometallic_chemistry\"}, {:title=>\"Molecular Photonics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amolecular_photonics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:molecular_photonics\"}, {:title=>\"Transparent Oxides\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Atransparent_oxides\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:transparent_oxides\"}, {:title=>\"Molecular Electronics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amolecular_electronics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:molecular_electronics\"}]",
      
        cited_by_id: 31
    },
    {
        author_id: "HgoZ648AAAAJ",
        name: "Emma Bell",
        affiliations: "Open University, UK",
        interests:
        "[{:title=>\"organisation studies and management\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aorganisation_studies_and_management\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:organisation_studies_and_management\"}]",
        
        cited_by_id: 34
    },
    {
        author_id: "VGAjRmYAAAAJ",
        name: "Emma Thomson",
        affiliations: "Professor of Infectious Diseases",
        interests:
        "[{:title=>\"Virology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Avirology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:virology\"}]",
        
        cited_by_id: 36
    },
    {
        author_id: "BjncDdoAAAAJ",
        name: "Aleksandar Milosavljevic",
        affiliations: "Professor, Henry and Emma Meyer Chair in Molecular Genetics, Baylor College of Medicine",
        interests:
        "[{:title=>\"extracellular RNA\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aextracellular_rna\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:extracellular_rna\"}, {:title=>\"intercellular communication\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aintercellular_communication\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:intercellular_communication\"}, {:title=>\"epigenomics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aepigenomics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:epigenomics\"}, {:title=>\"genome informatics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Agenome_informatics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:genome_informatics\"}, {:title=>\"bioinformatics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abioinformatics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:bioinformatics\"}]",
        
        cited_by_id: 37
    },
    {
        author_id: "AbOLnm8AAAAJ",
        name: "hans van goudoever",
        affiliations: "Emma Kinderziekenhuis Amsterdam",
        interests: nil,
      
        cited_by_id: 38
    },
    {
        author_id: "yHnDnvcAAAAJ",
        name: "Emma Lundberg",
        affiliations: "Associate Professor of Bioengineering and Pathology, Stanford University",
        interests:
        "[{:title=>\"Bioimaging\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abioimaging\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:bioimaging\"}, {:title=>\"spatial proteomics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aspatial_proteomics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:spatial_proteomics\"}]",
       
        cited_by_id: 39
    },
    {
        author_id: "3lTZ47QAAAAJ",
        name: "Emma Guttman-Yassky",
        affiliations: "Professor of Dermatology and Immunology, Mount Sinai Medical Center",
        interests:
        "[{:title=>\"Atopic dermatitis\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aatopic_dermatitis\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:atopic_dermatitis\"}, {:title=>\"Alopecia Areata\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aalopecia_areata\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:alopecia_areata\"}, {:title=>\"Contact Dermatitis\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Acontact_dermatitis\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:contact_dermatitis\"}]",
      
        cited_by_id: 40
    },
    {
        author_id: "KnVNU0kAAAAJ",
        name: "Emma Tolley",
        affiliations: "EPFL",
        interests:
        "[{:title=>\"astrophysics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aastrophysics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:astrophysics\"}, {:title=>\"data science\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adata_science\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:data_science\"}, {:title=>\"machine learning\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amachine_learning\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:machine_learning\"}]",
        
        cited_by_id: 33
    },
    {
        author_id: "RxJ_l1QAAAAJ",
        name: "Tiziano Camporesi",
        affiliations: "CERN",
        interests:
        "[{:title=>\"Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aphysics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:physics\"}]",
       
        cited_by_id: 41
    },
    {
        author_id: "J-2ook4AAAAJ",
        name: "Tiziano Rovelli",
        affiliations: "Bologna University & INFN",
        interests:
        "[{:title=>\"Plasma Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aplasma_physics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:plasma_physics\"}, {:title=>\"Medical Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amedical_physics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:medical_physics\"}, {:title=>\"Particle Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aparticle_physics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:particle_physics\"}, {:title=>\"Didactical Physics\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adidactical_physics\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:didactical_physics\"}]",
        cited_by_id: 42
    }
])

cited_by=CitedBy.create([
    {
    cited_by_id: 3,                                    
  author_id: "kq0NYnMAAAAJ",                         
  all_citations: 185563,                             
  citations_from_2016: 58072,                        
  h_index: 93,                                       
  h_from_2016: 39,                                   
  i10_index: 322,                                    
  i10_from_2016: 166,                                
  graph:                                             
   [{"year"=>1994, "citations"=>649},                
    {"year"=>1995, "citations"=>836},                
    {"year"=>1996, "citations"=>1168},               
    {"year"=>1997, "citations"=>1338},
    {"year"=>1998, "citations"=>1556},
    {"year"=>1999, "citations"=>1910},
    {"year"=>2000, "citations"=>2746},
    {"year"=>2001, "citations"=>3205},
    {"year"=>2002, "citations"=>4066},
    {"year"=>2003, "citations"=>4750},
    {"year"=>2004, "citations"=>5052},
    {"year"=>2005, "citations"=>5409},
    {"year"=>2006, "citations"=>5800},
    {"year"=>2007, "citations"=>5876},
    {"year"=>2008, "citations"=>6639},
    {"year"=>2009, "citations"=>6991},
    {"year"=>2010, "citations"=>7257},
    {"year"=>2011, "citations"=>8222},
    {"year"=>2012, "citations"=>8949},
    {"year"=>2013, "citations"=>9632},
    {"year"=>2014, "citations"=>10511},
    {"year"=>2015, "citations"=>11143},
    {"year"=>2016, "citations"=>11367},
    {"year"=>2017, "citations"=>11562},
    {"year"=>2018, "citations"=>11668},
    {"year"=>2019, "citations"=>11032},
    {"year"=>2020, "citations"=>9681},
    {"year"=>2021, "citations"=>8935},
    {"year"=>2022, "citations"=>5193}]
},
{
  cited_by_id: 4,
  author_id: "ZjfgPLMAAAAJ",
  all_citations: 135626,
  citations_from_2016: 88657,
  h_index: 125,
  h_from_2016: 103,
  i10_index: 367,
  i10_from_2016: 351,
  graph:
   [{"year"=>2010, "citations"=>881},
    {"year"=>2011, "citations"=>2286},
    {"year"=>2012, "citations"=>3951},
    {"year"=>2013, "citations"=>6022},
    {"year"=>2014, "citations"=>8179},
    {"year"=>2015, "citations"=>10729},
    {"year"=>2016, "citations"=>12908},
    {"year"=>2017, "citations"=>14451},
    {"year"=>2018, "citations"=>15814},
    {"year"=>2019, "citations"=>16542},
    {"year"=>2020, "citations"=>16295},
    {"year"=>2021, "citations"=>16274},
    {"year"=>2022, "citations"=>9186}]
},
{
  cited_by_id: 5,
  author_id: "R8PPdbQAAAAJ",
  all_citations: 85116,
  citations_from_2016: 23911,
  h_index: 117,
  h_from_2016: 68,
  i10_index: 381,
  i10_from_2016: 280,
  graph:
   [{"year"=>1998, "citations"=>440},
    {"year"=>1999, "citations"=>1085},
    {"year"=>2000, "citations"=>1758},
    {"year"=>2001, "citations"=>2095},
    {"year"=>2002, "citations"=>2290},
    {"year"=>2003, "citations"=>2803},
    {"year"=>2004, "citations"=>2891},
    {"year"=>2005, "citations"=>3162},
    {"year"=>2006, "citations"=>3112},
    {"year"=>2007, "citations"=>3420},
    {"year"=>2008, "citations"=>3498},
    {"year"=>2009, "citations"=>3390},
    {"year"=>2010, "citations"=>3546},
    {"year"=>2011, "citations"=>3740},
    {"year"=>2012, "citations"=>4410},
    {"year"=>2013, "citations"=>4062},
    {"year"=>2014, "citations"=>4186},
    {"year"=>2015, "citations"=>4218},
    {"year"=>2016, "citations"=>4241},
    {"year"=>2017, "citations"=>4014},
    {"year"=>2018, "citations"=>4266},
    {"year"=>2019, "citations"=>4208},
    {"year"=>2020, "citations"=>4396},
    {"year"=>2021, "citations"=>4393},
    {"year"=>2022, "citations"=>2491}]
},
{
  cited_by_id: 6,
  author_id: "iXjCKTgAAAAJ",
  all_citations: 72977,
  citations_from_2016: 31020,
  h_index: 132,
  h_from_2016: 90,
  i10_index: 397,
  i10_from_2016: 350,
  graph:
   [{"year"=>2000, "citations"=>200},
    {"year"=>2001, "citations"=>352},
    {"year"=>2002, "citations"=>478},
    {"year"=>2003, "citations"=>626},
    {"year"=>2004, "citations"=>978},
    {"year"=>2005, "citations"=>1149},
    {"year"=>2006, "citations"=>1671},
    {"year"=>2007, "citations"=>1740},
    {"year"=>2008, "citations"=>2266},
    {"year"=>2009, "citations"=>2601},
    {"year"=>2010, "citations"=>2690},
    {"year"=>2011, "citations"=>3715},
    {"year"=>2012, "citations"=>3761},
    {"year"=>2013, "citations"=>4296},
    {"year"=>2014, "citations"=>4373},
    {"year"=>2015, "citations"=>4573},
    {"year"=>2016, "citations"=>5044},
    {"year"=>2017, "citations"=>4829},
    {"year"=>2018, "citations"=>5218},
    {"year"=>2019, "citations"=>5337},
    {"year"=>2020, "citations"=>5876},
    {"year"=>2021, "citations"=>6008},
    {"year"=>2022, "citations"=>3733}]
},
{
  cited_by_id: 7,
  author_id: "L9lS9_AAAAAJ",
  all_citations: 63484,
  citations_from_2016: 60777,
  h_index: 28,
  h_from_2016: 23,
  i10_index: 35,
  i10_from_2016: 26,
  graph:
   [{"year"=>2015, "citations"=>318},
    {"year"=>2016, "citations"=>1285},
    {"year"=>2017, "citations"=>4381},
    {"year"=>2018, "citations"=>8907},
    {"year"=>2019, "citations"=>12015},
    {"year"=>2020, "citations"=>13548},
    {"year"=>2021, "citations"=>14319},
    {"year"=>2022, "citations"=>7579}]
},
{
  cited_by_id: 8,
  author_id: "wT4V7isAAAAJ",
  all_citations: 62871,
  citations_from_2016: 30283,
  h_index: 113,
  h_from_2016: 71,
  i10_index: 943,
  i10_from_2016: 640,
  graph:
   [{"year"=>1997, "citations"=>194},
    {"year"=>1998, "citations"=>204},
    {"year"=>1999, "citations"=>282},
    {"year"=>2000, "citations"=>332},
    {"year"=>2001, "citations"=>506},
    {"year"=>2002, "citations"=>417},
    {"year"=>2003, "citations"=>519},
    {"year"=>2004, "citations"=>762},
    {"year"=>2005, "citations"=>933},
    {"year"=>2006, "citations"=>1101},
    {"year"=>2007, "citations"=>1287},
    {"year"=>2008, "citations"=>1368},
    {"year"=>2009, "citations"=>1689},
    {"year"=>2010, "citations"=>2045},
    {"year"=>2011, "citations"=>2589},
    {"year"=>2012, "citations"=>2411},
    {"year"=>2013, "citations"=>2816},
    {"year"=>2014, "citations"=>3144},
    {"year"=>2015, "citations"=>3555},
    {"year"=>2016, "citations"=>4941},
    {"year"=>2017, "citations"=>4717},
    {"year"=>2018, "citations"=>4604},
    {"year"=>2019, "citations"=>5252},
    {"year"=>2020, "citations"=>5811},
    {"year"=>2021, "citations"=>6230},
    {"year"=>2022, "citations"=>3620}]
},
{
  cited_by_id: 9,
  author_id: "z1Kz8gQAAAAJ",
  all_citations: 56489,
  citations_from_2016: 26194,
  h_index: 92,
  h_from_2016: 77,
  i10_index: 168,
  i10_from_2016: 147,
  graph:
   [{"year"=>2001, "citations"=>149},
    {"year"=>2002, "citations"=>216},
    {"year"=>2003, "citations"=>315},
    {"year"=>2004, "citations"=>404},
    {"year"=>2005, "citations"=>545},
    {"year"=>2006, "citations"=>687},
    {"year"=>2007, "citations"=>981},
    {"year"=>2008, "citations"=>1305},
    {"year"=>2009, "citations"=>1538},
    {"year"=>2010, "citations"=>1969},
    {"year"=>2011, "citations"=>2418},
    {"year"=>2012, "citations"=>3043},
    {"year"=>2013, "citations"=>3397},
    {"year"=>2014, "citations"=>3600},
    {"year"=>2015, "citations"=>4194},
    {"year"=>2016, "citations"=>4472},
    {"year"=>2017, "citations"=>4269},
    {"year"=>2018, "citations"=>4953},
    {"year"=>2019, "citations"=>4497},
    {"year"=>2020, "citations"=>4679},
    {"year"=>2021, "citations"=>4804},
    {"year"=>2022, "citations"=>2961}]
},
{
  cited_by_id: 10,
  author_id: "9zEuqoIAAAAJ",
  all_citations: 53896,
  citations_from_2016: 16189,
  h_index: 100,
  h_from_2016: 60,
  i10_index: 202,
  i10_from_2016: 162,
  graph:
   [{"year"=>1994, "citations"=>172},
    {"year"=>1995, "citations"=>232},
    {"year"=>1996, "citations"=>274},
    {"year"=>1997, "citations"=>297},
    {"year"=>1998, "citations"=>435},
    {"year"=>1999, "citations"=>655},
    {"year"=>2000, "citations"=>645},
    {"year"=>2001, "citations"=>800},
    {"year"=>2002, "citations"=>1062},
    {"year"=>2003, "citations"=>1438},
    {"year"=>2004, "citations"=>1835},
    {"year"=>2005, "citations"=>1803},
    {"year"=>2006, "citations"=>1901},
    {"year"=>2007, "citations"=>2097},
    {"year"=>2008, "citations"=>2249},
    {"year"=>2009, "citations"=>2303},
    {"year"=>2010, "citations"=>2449},
    {"year"=>2011, "citations"=>2552},
    {"year"=>2012, "citations"=>3007},
    {"year"=>2013, "citations"=>2908},
    {"year"=>2014, "citations"=>2749},
    {"year"=>2015, "citations"=>2580},
    {"year"=>2016, "citations"=>2633},
    {"year"=>2017, "citations"=>2736},
    {"year"=>2018, "citations"=>2580},
    {"year"=>2019, "citations"=>2692},
    {"year"=>2020, "citations"=>3030},
    {"year"=>2021, "citations"=>3200},
    {"year"=>2022, "citations"=>1929}]
},
{
  cited_by_id: 11,
  author_id: "-8IsASwAAAAJ",
  all_citations: 53229,
  citations_from_2016: 17265,
  h_index: 95,
  h_from_2016: 59,
  i10_index: 262,
  i10_from_2016: 163,
  graph:
   [{"year"=>1995, "citations"=>155},
    {"year"=>1996, "citations"=>171},
    {"year"=>1997, "citations"=>162},
    {"year"=>1998, "citations"=>218},
    {"year"=>1999, "citations"=>366},
    {"year"=>2000, "citations"=>510},
    {"year"=>2001, "citations"=>769},
    {"year"=>2002, "citations"=>790},
    {"year"=>2003, "citations"=>993},
    {"year"=>2004, "citations"=>1151},
    {"year"=>2005, "citations"=>1369},
    {"year"=>2006, "citations"=>1506},
    {"year"=>2007, "citations"=>1643},
    {"year"=>2008, "citations"=>1809},
    {"year"=>2009, "citations"=>2016},
    {"year"=>2010, "citations"=>2383},
    {"year"=>2011, "citations"=>2629},
    {"year"=>2012, "citations"=>2988},
    {"year"=>2013, "citations"=>3249},
    {"year"=>2014, "citations"=>3326},
    {"year"=>2015, "citations"=>3336},
    {"year"=>2016, "citations"=>3266},
    {"year"=>2017, "citations"=>3394},
    {"year"=>2018, "citations"=>3199},
    {"year"=>2019, "citations"=>3044},
    {"year"=>2020, "citations"=>2942},
    {"year"=>2021, "citations"=>3053},
    {"year"=>2022, "citations"=>1602}]
},
{
    cited_by_id: 12,
  author_id: "QJ1yWLoAAAAJ",
  all_citations: 13642,
  citations_from_2016: 2397,
  h_index: 61,
  h_from_2016: 25,
  i10_index: 231,
  i10_from_2016: 69,
  graph:
   [{"year"=>1991, "citations"=>40},
    {"year"=>1992, "citations"=>33},
    {"year"=>1993, "citations"=>50},
    {"year"=>1994, "citations"=>60},
    {"year"=>1995, "citations"=>61},
    {"year"=>1996, "citations"=>80},
    {"year"=>1997, "citations"=>54},
    {"year"=>1998, "citations"=>60},
    {"year"=>1999, "citations"=>157},
    {"year"=>2000, "citations"=>192},
    {"year"=>2001, "citations"=>370},
    {"year"=>2002, "citations"=>449},
    {"year"=>2003, "citations"=>480},
    {"year"=>2004, "citations"=>585},
    {"year"=>2005, "citations"=>708},
    {"year"=>2006, "citations"=>816},
    {"year"=>2007, "citations"=>714},
    {"year"=>2008, "citations"=>646},
    {"year"=>2009, "citations"=>704},
    {"year"=>2010, "citations"=>718},
    {"year"=>2011, "citations"=>769},
    {"year"=>2012, "citations"=>606},
    {"year"=>2013, "citations"=>671},
    {"year"=>2014, "citations"=>585},
    {"year"=>2015, "citations"=>638},
    {"year"=>2016, "citations"=>661},
    {"year"=>2017, "citations"=>540},
    {"year"=>2018, "citations"=>477},
    {"year"=>2019, "citations"=>398},
    {"year"=>2020, "citations"=>404},
    {"year"=>2021, "citations"=>370},
    {"year"=>2022, "citations"=>208}]
},
{
  cited_by_id: 13,
  author_id: "wrlU53gAAAAJ",
  all_citations: 3729,
  citations_from_2016: 2325,
  h_index: 29,
  h_from_2016: 23,
  i10_index: 69,
  i10_from_2016: 41,
  graph:
   [{"year"=>2002, "citations"=>14},
    {"year"=>2003, "citations"=>26},
    {"year"=>2004, "citations"=>70},
    {"year"=>2005, "citations"=>36},
    {"year"=>2006, "citations"=>87},
    {"year"=>2007, "citations"=>81},
    {"year"=>2008, "citations"=>73},
    {"year"=>2009, "citations"=>63},
    {"year"=>2010, "citations"=>76},
    {"year"=>2011, "citations"=>104},
    {"year"=>2012, "citations"=>122},
    {"year"=>2013, "citations"=>92},
    {"year"=>2014, "citations"=>128},
    {"year"=>2015, "citations"=>163},
    {"year"=>2016, "citations"=>216},
    {"year"=>2017, "citations"=>244},
    {"year"=>2018, "citations"=>325},
    {"year"=>2019, "citations"=>425},
    {"year"=>2020, "citations"=>503},
    {"year"=>2021, "citations"=>476},
    {"year"=>2022, "citations"=>351}]
},
{
  cited_by_id: 14,
  author_id: "ls4aMEQAAAAJ",
  all_citations: 3193,
  citations_from_2016: 459,
  h_index: 20,
  h_from_2016: 11,
  i10_index: 28,
  i10_from_2016: 12,
  graph:
   [{"year"=>1992, "citations"=>20},
    {"year"=>1993, "citations"=>109},
    {"year"=>1994, "citations"=>176},
    {"year"=>1995, "citations"=>137},
    {"year"=>1996, "citations"=>179},
    {"year"=>1997, "citations"=>160},
    {"year"=>1998, "citations"=>143},
    {"year"=>1999, "citations"=>129},
    {"year"=>2000, "citations"=>120},
    {"year"=>2001, "citations"=>113},
    {"year"=>2002, "citations"=>77},
    {"year"=>2003, "citations"=>80},
    {"year"=>2004, "citations"=>98},
    {"year"=>2005, "citations"=>71},
    {"year"=>2006, "citations"=>87},
    {"year"=>2007, "citations"=>81},
    {"year"=>2008, "citations"=>127},
    {"year"=>2009, "citations"=>83},
    {"year"=>2010, "citations"=>110},
    {"year"=>2011, "citations"=>88},
    {"year"=>2012, "citations"=>112},
    {"year"=>2013, "citations"=>102},
    {"year"=>2014, "citations"=>96},
    {"year"=>2015, "citations"=>87},
    {"year"=>2016, "citations"=>98},
    {"year"=>2017, "citations"=>91},
    {"year"=>2018, "citations"=>65},
    {"year"=>2019, "citations"=>73},
    {"year"=>2020, "citations"=>101},
    {"year"=>2021, "citations"=>94},
    {"year"=>2022, "citations"=>35}]
},
{
  cited_by_id: 15,
  author_id: "fipll9oAAAAJ",
  all_citations: 2504,
  citations_from_2016: 1547,
  h_index: 23,
  h_from_2016: 18,
  i10_index: 53,
  i10_from_2016: 40,
  graph:
   [{"year"=>2007, "citations"=>15},
    {"year"=>2008, "citations"=>27},
    {"year"=>2009, "citations"=>21},
    {"year"=>2010, "citations"=>39},
    {"year"=>2011, "citations"=>95},
    {"year"=>2012, "citations"=>98},
    {"year"=>2013, "citations"=>93},
    {"year"=>2014, "citations"=>119},
    {"year"=>2015, "citations"=>194},
    {"year"=>2016, "citations"=>219},
    {"year"=>2017, "citations"=>195},
    {"year"=>2018, "citations"=>243},
    {"year"=>2019, "citations"=>301},
    {"year"=>2020, "citations"=>292},
    {"year"=>2021, "citations"=>308},
    {"year"=>2022, "citations"=>204}]
},
{
  cited_by_id: 16,
  author_id: "LFKbvaIAAAAJ",
  all_citations: 2048,
  citations_from_2016: 1799,
  h_index: 16,
  h_from_2016: 16,
  i10_index: 22,
  i10_from_2016: 21,
  graph:
   [{"year"=>2014, "citations"=>11},
    {"year"=>2015, "citations"=>79},
    {"year"=>2016, "citations"=>133},
    {"year"=>2017, "citations"=>173},
    {"year"=>2018, "citations"=>231},
    {"year"=>2019, "citations"=>241},
    {"year"=>2020, "citations"=>331},
    {"year"=>2021, "citations"=>464},
    {"year"=>2022, "citations"=>353}]
},
{
  cited_by_id: 17,
  author_id: "qjRUfu4AAAAJ",
  all_citations: 1846,
  citations_from_2016: 1236,
  h_index: 15,
  h_from_2016: 12,
  i10_index: 19,
  i10_from_2016: 14,
  graph:
   [{"year"=>2007, "citations"=>13},
    {"year"=>2008, "citations"=>25},
    {"year"=>2009, "citations"=>29},
    {"year"=>2010, "citations"=>47},
    {"year"=>2011, "citations"=>65},
    {"year"=>2012, "citations"=>69},
    {"year"=>2013, "citations"=>79},
    {"year"=>2014, "citations"=>71},
    {"year"=>2015, "citations"=>80},
    {"year"=>2016, "citations"=>87},
    {"year"=>2017, "citations"=>104},
    {"year"=>2018, "citations"=>129},
    {"year"=>2019, "citations"=>209},
    {"year"=>2020, "citations"=>274},
    {"year"=>2021, "citations"=>349},
    {"year"=>2022, "citations"=>167}]
},
{
  cited_by_id: 18,
  author_id: "dHQVgmMAAAAJ",
  all_citations: 1840,
  citations_from_2016: 114,
  h_index: 18,
  h_from_2016: 6,
  i10_index: 24,
  i10_from_2016: 2,
  graph:
   [{"year"=>1991, "citations"=>5},
    {"year"=>1992, "citations"=>18},
    {"year"=>1993, "citations"=>13},
    {"year"=>1994, "citations"=>13},
    {"year"=>1995, "citations"=>25},
    {"year"=>1996, "citations"=>20},
    {"year"=>1997, "citations"=>41},
    {"year"=>1998, "citations"=>48},
    {"year"=>1999, "citations"=>40},
    {"year"=>2000, "citations"=>49},
    {"year"=>2001, "citations"=>38},
    {"year"=>2002, "citations"=>65},
    {"year"=>2003, "citations"=>59},
    {"year"=>2004, "citations"=>79},
    {"year"=>2005, "citations"=>81},
    {"year"=>2006, "citations"=>92},
    {"year"=>2007, "citations"=>112},
    {"year"=>2008, "citations"=>126},
    {"year"=>2009, "citations"=>134},
    {"year"=>2010, "citations"=>129},
    {"year"=>2011, "citations"=>133},
    {"year"=>2012, "citations"=>115},
    {"year"=>2013, "citations"=>107},
    {"year"=>2014, "citations"=>58},
    {"year"=>2015, "citations"=>52},
    {"year"=>2016, "citations"=>34},
    {"year"=>2017, "citations"=>29},
    {"year"=>2018, "citations"=>18},
    {"year"=>2019, "citations"=>27},
    {"year"=>2020, "citations"=>18},
    {"year"=>2021, "citations"=>16},
    {"year"=>2022, "citations"=>6}]
},
{
  cited_by_id: 19,
  author_id: "xoZ6gBUAAAAJ",
  all_citations: 1795,
  citations_from_2016: 1699,
  h_index: 24,
  h_from_2016: 24,
  i10_index: 42,
  i10_from_2016: 39,
  graph:
   [{"year"=>2013, "citations"=>5},
    {"year"=>2014, "citations"=>9},
    {"year"=>2015, "citations"=>16},
    {"year"=>2016, "citations"=>53},
    {"year"=>2017, "citations"=>86},
    {"year"=>2018, "citations"=>151},
    {"year"=>2019, "citations"=>296},
    {"year"=>2020, "citations"=>300},
    {"year"=>2021, "citations"=>464},
    {"year"=>2022, "citations"=>402}]
},
{
  cited_by_id: 20,
  author_id: "gHLOPtIAAAAJ",
  all_citations: 1782,
  citations_from_2016: 796,
  h_index: 24,
  h_from_2016: 14,
  i10_index: 51,
  i10_from_2016: 28,
  graph:
   [{"year"=>1999, "citations"=>10},
    {"year"=>2000, "citations"=>9},
    {"year"=>2001, "citations"=>10},
    {"year"=>2002, "citations"=>13},
    {"year"=>2003, "citations"=>18},
    {"year"=>2004, "citations"=>12},
    {"year"=>2005, "citations"=>13},
    {"year"=>2006, "citations"=>24},
    {"year"=>2007, "citations"=>45},
    {"year"=>2008, "citations"=>42},
    {"year"=>2009, "citations"=>46},
    {"year"=>2010, "citations"=>63},
    {"year"=>2011, "citations"=>90},
    {"year"=>2012, "citations"=>72},
    {"year"=>2013, "citations"=>58},
    {"year"=>2014, "citations"=>121},
    {"year"=>2015, "citations"=>130},
    {"year"=>2016, "citations"=>137},
    {"year"=>2017, "citations"=>148},
    {"year"=>2018, "citations"=>146},
    {"year"=>2019, "citations"=>132},
    {"year"=>2020, "citations"=>124},
    {"year"=>2021, "citations"=>168},
    {"year"=>2022, "citations"=>75}]
},
{
  cited_by_id: 21,
  author_id: "rL3N4l4AAAAJ",
  all_citations: 1532,
  citations_from_2016: 665,
  h_index: 17,
  h_from_2016: 11,
  i10_index: 21,
  i10_from_2016: 14,
  graph:
   [{"year"=>2010, "citations"=>28},
    {"year"=>2011, "citations"=>89},
    {"year"=>2012, "citations"=>136},
    {"year"=>2013, "citations"=>124},
    {"year"=>2014, "citations"=>147},
    {"year"=>2015, "citations"=>171},
    {"year"=>2016, "citations"=>157},
    {"year"=>2017, "citations"=>155},
    {"year"=>2018, "citations"=>143},
    {"year"=>2019, "citations"=>111},
    {"year"=>2020, "citations"=>103},
    {"year"=>2021, "citations"=>93},
    {"year"=>2022, "citations"=>60}]
},
{
  cited_by_id: 22,
  author_id: "g9WIbh0AAAAJ",
  all_citations: 478465,
  citations_from_2016: 152211,
  h_index: 180,
  h_from_2016: 115,
  i10_index: 894,
  i10_from_2016: 474,
  graph:
   [{"year"=>1991, "citations"=>1182},
    {"year"=>1992, "citations"=>1524},
    {"year"=>1993, "citations"=>1812},
    {"year"=>1994, "citations"=>2103},
    {"year"=>1995, "citations"=>2446},
    {"year"=>1996, "citations"=>2661},
    {"year"=>1997, "citations"=>3267},
    {"year"=>1998, "citations"=>3642},
    {"year"=>1999, "citations"=>4348},
    {"year"=>2000, "citations"=>5598},
    {"year"=>2001, "citations"=>6378},
    {"year"=>2002, "citations"=>7990},
    {"year"=>2003, "citations"=>9814},
    {"year"=>2004, "citations"=>11199},
    {"year"=>2005, "citations"=>11923},
    {"year"=>2006, "citations"=>13389},
    {"year"=>2007, "citations"=>15114},
    {"year"=>2008, "citations"=>16293},
    {"year"=>2009, "citations"=>17491},
    {"year"=>2010, "citations"=>19191},
    {"year"=>2011, "citations"=>20996},
    {"year"=>2012, "citations"=>23420},
    {"year"=>2013, "citations"=>26219},
    {"year"=>2014, "citations"=>26108},
    {"year"=>2015, "citations"=>28573},
    {"year"=>2016, "citations"=>28967},
    {"year"=>2017, "citations"=>30224},
    {"year"=>2018, "citations"=>29256},
    {"year"=>2019, "citations"=>28418},
    {"year"=>2020, "citations"=>26795},
    {"year"=>2021, "citations"=>25500},
    {"year"=>2022, "citations"=>11979}]
},
{
  cited_by_id: 24,
  author_id: "xVvyb1gAAAAJ",
  all_citations: 313765,
  citations_from_2016: 77806,
  h_index: 273,
  h_from_2016: 131,
  i10_index: 656,
  i10_from_2016: 510,
  graph:
   [{"year"=>1987, "citations"=>846},
    {"year"=>1988, "citations"=>1269},
    {"year"=>1989, "citations"=>1740},
    {"year"=>1990, "citations"=>2175},
    {"year"=>1991, "citations"=>2395},
    {"year"=>1992, "citations"=>2599},
    {"year"=>1993, "citations"=>2744},
    {"year"=>1994, "citations"=>3299},
    {"year"=>1995, "citations"=>3904},
    {"year"=>1996, "citations"=>4896},
    {"year"=>1997, "citations"=>5532},
    {"year"=>1998, "citations"=>6372},
    {"year"=>1999, "citations"=>7273},
    {"year"=>2000, "citations"=>7189},
    {"year"=>2001, "citations"=>7715},
    {"year"=>2002, "citations"=>8242},
    {"year"=>2003, "citations"=>9024},
    {"year"=>2004, "citations"=>9195},
    {"year"=>2005, "citations"=>9773},
    {"year"=>2006, "citations"=>10758},
    {"year"=>2007, "citations"=>10549},
    {"year"=>2008, "citations"=>11079},
    {"year"=>2009, "citations"=>11124},
    {"year"=>2010, "citations"=>12193},
    {"year"=>2011, "citations"=>12998},
    {"year"=>2012, "citations"=>13519},
    {"year"=>2013, "citations"=>13730},
    {"year"=>2014, "citations"=>13419},
    {"year"=>2015, "citations"=>13492},
    {"year"=>2016, "citations"=>13533},
    {"year"=>2017, "citations"=>13242},
    {"year"=>2018, "citations"=>13056},
    {"year"=>2019, "citations"=>13093},
    {"year"=>2020, "citations"=>14086},
    {"year"=>2021, "citations"=>15527},
    {"year"=>2022, "citations"=>8742}]
},
{
  cited_by_id: 25,
  author_id: "AAhsht0AAAAJ",
  all_citations: 292187,
  citations_from_2016: 66952,
  h_index: 242,
  h_from_2016: 101,
  i10_index: 912,
  i10_from_2016: 498,
  graph:
   [{"year"=>1983, "citations"=>1370},
    {"year"=>1984, "citations"=>1854},
    {"year"=>1985, "citations"=>1985},
    {"year"=>1986, "citations"=>1915},
    {"year"=>1987, "citations"=>2172},
    {"year"=>1988, "citations"=>2242},
    {"year"=>1989, "citations"=>2457},
    {"year"=>1990, "citations"=>2538},
    {"year"=>1991, "citations"=>2632},
    {"year"=>1992, "citations"=>2729},
    {"year"=>1993, "citations"=>2973},
    {"year"=>1994, "citations"=>3200},
    {"year"=>1995, "citations"=>2990},
    {"year"=>1996, "citations"=>3727},
    {"year"=>1997, "citations"=>4028},
    {"year"=>1998, "citations"=>4631},
    {"year"=>1999, "citations"=>4841},
    {"year"=>2000, "citations"=>5358},
    {"year"=>2001, "citations"=>5634},
    {"year"=>2002, "citations"=>6533},
    {"year"=>2003, "citations"=>6543},
    {"year"=>2004, "citations"=>7217},
    {"year"=>2005, "citations"=>7984},
    {"year"=>2006, "citations"=>10296},
    {"year"=>2007, "citations"=>8695},
    {"year"=>2008, "citations"=>9907},
    {"year"=>2009, "citations"=>9712},
    {"year"=>2010, "citations"=>10237},
    {"year"=>2011, "citations"=>10728},
    {"year"=>2012, "citations"=>12107},
    {"year"=>2013, "citations"=>13648},
    {"year"=>2014, "citations"=>13705},
    {"year"=>2015, "citations"=>13550},
    {"year"=>2016, "citations"=>12666},
    {"year"=>2017, "citations"=>12972},
    {"year"=>2018, "citations"=>12216},
    {"year"=>2019, "citations"=>12208},
    {"year"=>2020, "citations"=>11200},
    {"year"=>2021, "citations"=>12039},
    {"year"=>2022, "citations"=>6298}]
},
{
  cited_by_id: 26,
  author_id: "TWTQCX8AAAAJ",
  all_citations: 291430,
  citations_from_2016: 152156,
  h_index: 243,
  h_from_2016: 166,
  i10_index: 1921,
  i10_from_2016: 1617,
  graph:
   [{"year"=>2003, "citations"=>844},
    {"year"=>2004, "citations"=>1217},
    {"year"=>2005, "citations"=>1797},
    {"year"=>2006, "citations"=>2498},
    {"year"=>2007, "citations"=>3314},
    {"year"=>2008, "citations"=>4278},
    {"year"=>2009, "citations"=>5393},
    {"year"=>2010, "citations"=>5846},
    {"year"=>2011, "citations"=>9301},
    {"year"=>2012, "citations"=>13902},
    {"year"=>2013, "citations"=>17100},
    {"year"=>2014, "citations"=>19706},
    {"year"=>2015, "citations"=>22532},
    {"year"=>2016, "citations"=>26196},
    {"year"=>2017, "citations"=>27548},
    {"year"=>2018, "citations"=>29314},
    {"year"=>2019, "citations"=>27573},
    {"year"=>2020, "citations"=>25515},
    {"year"=>2021, "citations"=>27322},
    {"year"=>2022, "citations"=>14750}]
},
{
  cited_by_id: 27,
  author_id: "s5RXOk4AAAAJ",
  all_citations: 279968,
  citations_from_2016: 113949,
  h_index: 219,
  h_from_2016: 148,
  i10_index: 1606,
  i10_from_2016: 1010,
  graph:
   [{"year"=>1995, "citations"=>1036},
    {"year"=>1996, "citations"=>1333},
    {"year"=>1997, "citations"=>1405},
    {"year"=>1998, "citations"=>1556},
    {"year"=>1999, "citations"=>1674},
    {"year"=>2000, "citations"=>2133},
    {"year"=>2001, "citations"=>3494},
    {"year"=>2002, "citations"=>3596},
    {"year"=>2003, "citations"=>2642},
    {"year"=>2004, "citations"=>2790},
    {"year"=>2005, "citations"=>4822},
    {"year"=>2006, "citations"=>5704},
    {"year"=>2007, "citations"=>6248},
    {"year"=>2008, "citations"=>7228},
    {"year"=>2009, "citations"=>6732},
    {"year"=>2010, "citations"=>7439},
    {"year"=>2011, "citations"=>12990},
    {"year"=>2012, "citations"=>17050},
    {"year"=>2013, "citations"=>16503},
    {"year"=>2014, "citations"=>16365},
    {"year"=>2015, "citations"=>18415},
    {"year"=>2016, "citations"=>20965},
    {"year"=>2017, "citations"=>22019},
    {"year"=>2018, "citations"=>24178},
    {"year"=>2019, "citations"=>22395},
    {"year"=>2020, "citations"=>18248},
    {"year"=>2021, "citations"=>17779},
    {"year"=>2022, "citations"=>9261}]
},
{
  cited_by_id: 28,
  author_id: "V7AleF4AAAAJ",
  all_citations: 267690,
  citations_from_2016: 108406,
  h_index: 223,
  h_from_2016: 122,
  i10_index: 947,
  i10_from_2016: 705,
  graph:
   [{"year"=>1993, "citations"=>744},
    {"year"=>1994, "citations"=>878},
    {"year"=>1995, "citations"=>1008},
    {"year"=>1996, "citations"=>1155},
    {"year"=>1997, "citations"=>1421},
    {"year"=>1998, "citations"=>1570},
    {"year"=>1999, "citations"=>2010},
    {"year"=>2000, "citations"=>2488},
    {"year"=>2001, "citations"=>2872},
    {"year"=>2002, "citations"=>3231},
    {"year"=>2003, "citations"=>3692},
    {"year"=>2004, "citations"=>4504},
    {"year"=>2005, "citations"=>4944},
    {"year"=>2006, "citations"=>5538},
    {"year"=>2007, "citations"=>6437},
    {"year"=>2008, "citations"=>7140},
    {"year"=>2009, "citations"=>7858},
    {"year"=>2010, "citations"=>9836},
    {"year"=>2011, "citations"=>11207},
    {"year"=>2012, "citations"=>12366},
    {"year"=>2013, "citations"=>13297},
    {"year"=>2014, "citations"=>13971},
    {"year"=>2015, "citations"=>14923},
    {"year"=>2016, "citations"=>17496},
    {"year"=>2017, "citations"=>18762},
    {"year"=>2018, "citations"=>19858},
    {"year"=>2019, "citations"=>19955},
    {"year"=>2020, "citations"=>19822},
    {"year"=>2021, "citations"=>19314},
    {"year"=>2022, "citations"=>10575}]
},
{
  cited_by_id: 29,
  author_id: "ZNmeRNIAAAAJ",
  all_citations: 265799,
  citations_from_2016: 85072,
  h_index: 119,
  h_from_2016: 61,
  i10_index: 362,
  i10_from_2016: 215,
  graph:
   [{"year"=>1993, "citations"=>694},
    {"year"=>1994, "citations"=>1100},
    {"year"=>1995, "citations"=>1432},
    {"year"=>1996, "citations"=>1753},
    {"year"=>1997, "citations"=>1765},
    {"year"=>1998, "citations"=>1994},
    {"year"=>1999, "citations"=>2247},
    {"year"=>2000, "citations"=>2693},
    {"year"=>2001, "citations"=>2978},
    {"year"=>2002, "citations"=>3455},
    {"year"=>2003, "citations"=>4039},
    {"year"=>2004, "citations"=>4881},
    {"year"=>2005, "citations"=>6577},
    {"year"=>2006, "citations"=>7820},
    {"year"=>2007, "citations"=>8662},
    {"year"=>2008, "citations"=>10182},
    {"year"=>2009, "citations"=>11345},
    {"year"=>2010, "citations"=>11653},
    {"year"=>2011, "citations"=>12955},
    {"year"=>2012, "citations"=>13757},
    {"year"=>2013, "citations"=>14837},
    {"year"=>2014, "citations"=>15528},
    {"year"=>2015, "citations"=>16466},
    {"year"=>2016, "citations"=>16345},
    {"year"=>2017, "citations"=>16361},
    {"year"=>2018, "citations"=>16235},
    {"year"=>2019, "citations"=>15551},
    {"year"=>2020, "citations"=>14419},
    {"year"=>2021, "citations"=>13737},
    {"year"=>2022, "citations"=>8769}]
},
{
  cited_by_id: 30,
  author_id: "RIg9DVEAAAAJ",
  all_citations: 103292,
  citations_from_2016: 48863,
  h_index: 152,
  h_from_2016: 108,
  i10_index: 578,
  i10_from_2016: 415,
  graph:
   [{"year"=>1999, "citations"=>306},
    {"year"=>2000, "citations"=>337},
    {"year"=>2001, "citations"=>382},
    {"year"=>2002, "citations"=>623},
    {"year"=>2003, "citations"=>836},
    {"year"=>2004, "citations"=>985},
    {"year"=>2005, "citations"=>1391},
    {"year"=>2006, "citations"=>1717},
    {"year"=>2007, "citations"=>2235},
    {"year"=>2008, "citations"=>2543},
    {"year"=>2009, "citations"=>3121},
    {"year"=>2010, "citations"=>3628},
    {"year"=>2011, "citations"=>3930},
    {"year"=>2012, "citations"=>4593},
    {"year"=>2013, "citations"=>5308},
    {"year"=>2014, "citations"=>5678},
    {"year"=>2015, "citations"=>6449},
    {"year"=>2016, "citations"=>7162},
    {"year"=>2017, "citations"=>7299},
    {"year"=>2018, "citations"=>8390},
    {"year"=>2019, "citations"=>8605},
    {"year"=>2020, "citations"=>8833},
    {"year"=>2021, "citations"=>9802},
    {"year"=>2022, "citations"=>5816}]
},
{
  cited_by_id: 31,
  author_id: "UVvGrbcAAAAJ",
  all_citations: 148657,
  citations_from_2016: 49082,
  h_index: 188,
  h_from_2016: 99,
  i10_index: 1237,
  i10_from_2016: 742,
  graph:
   [{"year"=>1983, "citations"=>410},
    {"year"=>1984, "citations"=>406},
    {"year"=>1985, "citations"=>589},
    {"year"=>1986, "citations"=>632},
    {"year"=>1987, "citations"=>631},
    {"year"=>1988, "citations"=>549},
    {"year"=>1989, "citations"=>759},
    {"year"=>1990, "citations"=>839},
    {"year"=>1991, "citations"=>965},
    {"year"=>1992, "citations"=>1011},
    {"year"=>1993, "citations"=>1062},
    {"year"=>1994, "citations"=>1271},
    {"year"=>1995, "citations"=>1513},
    {"year"=>1996, "citations"=>1886},
    {"year"=>1997, "citations"=>1761},
    {"year"=>1998, "citations"=>1958},
    {"year"=>1999, "citations"=>2010},
    {"year"=>2000, "citations"=>2190},
    {"year"=>2001, "citations"=>2106},
    {"year"=>2002, "citations"=>2551},
    {"year"=>2003, "citations"=>2406},
    {"year"=>2004, "citations"=>2772},
    {"year"=>2005, "citations"=>3086},
    {"year"=>2006, "citations"=>3447},
    {"year"=>2007, "citations"=>3859},
    {"year"=>2008, "citations"=>4291},
    {"year"=>2009, "citations"=>4794},
    {"year"=>2010, "citations"=>5530},
    {"year"=>2011, "citations"=>5795},
    {"year"=>2012, "citations"=>6069},
    {"year"=>2013, "citations"=>6910},
    {"year"=>2014, "citations"=>7014},
    {"year"=>2015, "citations"=>7686},
    {"year"=>2016, "citations"=>8043},
    {"year"=>2017, "citations"=>8681},
    {"year"=>2018, "citations"=>9034},
    {"year"=>2019, "citations"=>8670},
    {"year"=>2020, "citations"=>8322},
    {"year"=>2021, "citations"=>9229},
    {"year"=>2022, "citations"=>5132}]
},
{
  cited_by_id: 32,
  author_id: "U0EiqiUAAAAJ",
  all_citations: 89747,
  citations_from_2016: 52900,
  h_index: 13,
  h_from_2016: 12,
  i10_index: 17,
  i10_from_2016: 13,
  graph:
   [{"year"=>2010, "citations"=>488},
    {"year"=>2011, "citations"=>1664},
    {"year"=>2012, "citations"=>2789},
    {"year"=>2013, "citations"=>4698},
    {"year"=>2014, "citations"=>6979},
    {"year"=>2015, "citations"=>8827},
    {"year"=>2016, "citations"=>9780},
    {"year"=>2017, "citations"=>10073},
    {"year"=>2018, "citations"=>10417},
    {"year"=>2019, "citations"=>10453},
    {"year"=>2020, "citations"=>9642},
    {"year"=>2021, "citations"=>8221},
    {"year"=>2022, "citations"=>4092}]
},
{
  cited_by_id: 33,
  author_id: "KnVNU0kAAAAJ",
  all_citations: 85665,
  citations_from_2016: 71873,
  h_index: 154,
  h_from_2016: 140,
  i10_index: 549,
  i10_from_2016: 547,
  graph:
   [{"year"=>2013, "citations"=>296},
    {"year"=>2014, "citations"=>547},
    {"year"=>2015, "citations"=>3688},
    {"year"=>2016, "citations"=>8548},
    {"year"=>2017, "citations"=>11255},
    {"year"=>2018, "citations"=>14729},
    {"year"=>2019, "citations"=>14672},
    {"year"=>2020, "citations"=>12220},
    {"year"=>2021, "citations"=>12308},
    {"year"=>2022, "citations"=>6635}],
},
{
  cited_by_id: 34,
  author_id: "HgoZ648AAAAJ",
  all_citations: 41583,
  citations_from_2016: 22348,
  h_index: 35,
  h_from_2016: 28,
  i10_index: 58,
  i10_from_2016: 49,
  graph:
   [{"year"=>2005, "citations"=>134},
    {"year"=>2006, "citations"=>267},
    {"year"=>2007, "citations"=>404},
    {"year"=>2008, "citations"=>659},
    {"year"=>2009, "citations"=>970},
    {"year"=>2010, "citations"=>1181},
    {"year"=>2011, "citations"=>1499},
    {"year"=>2012, "citations"=>1762},
    {"year"=>2013, "citations"=>2372},
    {"year"=>2014, "citations"=>2754},
    {"year"=>2015, "citations"=>3054},
    {"year"=>2016, "citations"=>3511},
    {"year"=>2017, "citations"=>3842},
    {"year"=>2018, "citations"=>4034},
    {"year"=>2019, "citations"=>4183},
    {"year"=>2020, "citations"=>4219},
    {"year"=>2021, "citations"=>4124},
    {"year"=>2022, "citations"=>1924}]
},
{
  cited_by_id: 35,
  author_id: "lG-ENkQAAAAJ",
  all_citations: 38532,
  citations_from_2016: 38337,
  h_index: 31,
  h_from_2016: 31,
  i10_index: 34,
  i10_from_2016: 34,
  graph:
   [{"year"=>2017, "citations"=>143},
    {"year"=>2018, "citations"=>1973},
    {"year"=>2019, "citations"=>4865},
    {"year"=>2020, "citations"=>9198},
    {"year"=>2021, "citations"=>13111},
    {"year"=>2022, "citations"=>8640}]
},
{
  cited_by_id: 36,
  author_id: "VGAjRmYAAAAJ",
  all_citations: 34817,
  citations_from_2016: 22616,
  h_index: 88,
  h_from_2016: 59,
  i10_index: 248,
  i10_from_2016: 180,
  graph:
   [{"year"=>2007, "citations"=>88},
    {"year"=>2008, "citations"=>195},
    {"year"=>2009, "citations"=>322},
    {"year"=>2010, "citations"=>511},
    {"year"=>2011, "citations"=>897},
    {"year"=>2012, "citations"=>1883},
    {"year"=>2013, "citations"=>1977},
    {"year"=>2014, "citations"=>1705},
    {"year"=>2015, "citations"=>2174},
    {"year"=>2016, "citations"=>1876},
    {"year"=>2017, "citations"=>1927},
    {"year"=>2018, "citations"=>1817},
    {"year"=>2019, "citations"=>1504},
    {"year"=>2020, "citations"=>1996},
    {"year"=>2021, "citations"=>8071},
    {"year"=>2022, "citations"=>7020}]
},
{
  cited_by_id: 37,
  author_id: "BjncDdoAAAAJ",
  all_citations: 34092,
  citations_from_2016: 16411,
  h_index: 52,
  h_from_2016: 37,
  i10_index: 93,
  i10_from_2016: 66,
  graph:
   [{"year"=>2004, "citations"=>190},
    {"year"=>2005, "citations"=>317},
    {"year"=>2006, "citations"=>313},
    {"year"=>2007, "citations"=>504},
    {"year"=>2008, "citations"=>694},
    {"year"=>2009, "citations"=>977},
    {"year"=>2010, "citations"=>1127},
    {"year"=>2011, "citations"=>1372},
    {"year"=>2012, "citations"=>1743},
    {"year"=>2013, "citations"=>1918},
    {"year"=>2014, "citations"=>2186},
    {"year"=>2015, "citations"=>2559},
    {"year"=>2016, "citations"=>2694},
    {"year"=>2017, "citations"=>2831},
    {"year"=>2018, "citations"=>2827},
    {"year"=>2019, "citations"=>2983},
    {"year"=>2020, "citations"=>2914},
    {"year"=>2021, "citations"=>3187},
    {"year"=>2022, "citations"=>1661}]
},
{
  cited_by_id: 38,
  author_id: "AbOLnm8AAAAJ",
  all_citations: 28881,
  citations_from_2016: 16299,
  h_index: 82,
  h_from_2016: 63,
  i10_index: 319,
  i10_from_2016: 267,
  graph:
   [{"year"=>2001, "citations"=>96},
    {"year"=>2002, "citations"=>83},
    {"year"=>2003, "citations"=>143},
    {"year"=>2004, "citations"=>118},
    {"year"=>2005, "citations"=>129},
    {"year"=>2006, "citations"=>165},
    {"year"=>2007, "citations"=>237},
    {"year"=>2008, "citations"=>376},
    {"year"=>2009, "citations"=>492},
    {"year"=>2010, "citations"=>587},
    {"year"=>2011, "citations"=>898},
    {"year"=>2012, "citations"=>1187},
    {"year"=>2013, "citations"=>1546},
    {"year"=>2014, "citations"=>1782},
    {"year"=>2015, "citations"=>1930},
    {"year"=>2016, "citations"=>2045},
    {"year"=>2017, "citations"=>2334},
    {"year"=>2018, "citations"=>2427},
    {"year"=>2019, "citations"=>2641},
    {"year"=>2020, "citations"=>3070},
    {"year"=>2021, "citations"=>3520},
    {"year"=>2022, "citations"=>2237}]
},
{
  cited_by_id: 39,
  author_id: "yHnDnvcAAAAJ",
  all_citations: 26811,
  citations_from_2016: 22066,
  h_index: 45,
  h_from_2016: 40,
  i10_index: 91,
  i10_from_2016: 77,
  graph:
   [{"year"=>2010, "citations"=>161},
    {"year"=>2011, "citations"=>217},
    {"year"=>2012, "citations"=>404},
    {"year"=>2013, "citations"=>537},
    {"year"=>2014, "citations"=>790},
    {"year"=>2015, "citations"=>1069},
    {"year"=>2016, "citations"=>1315},
    {"year"=>2017, "citations"=>1821},
    {"year"=>2018, "citations"=>2850},
    {"year"=>2019, "citations"=>3498},
    {"year"=>2020, "citations"=>4593},
    {"year"=>2021, "citations"=>5796},
    {"year"=>2022, "citations"=>3469}]
},
{
  cited_by_id: 40,
  author_id: "3lTZ47QAAAAJ",
  all_citations: 26459,
  citations_from_2016: 21356,
  h_index: 83,
  h_from_2016: 80,
  i10_index: 226,
  i10_from_2016: 216,
  graph:
   [{"year"=>2008, "citations"=>73},
    {"year"=>2009, "citations"=>165},
    {"year"=>2010, "citations"=>263},
    {"year"=>2011, "citations"=>372},
    {"year"=>2012, "citations"=>440},
    {"year"=>2013, "citations"=>511},
    {"year"=>2014, "citations"=>659},
    {"year"=>2015, "citations"=>906},
    {"year"=>2016, "citations"=>1320},
    {"year"=>2017, "citations"=>2098},
    {"year"=>2018, "citations"=>2363},
    {"year"=>2019, "citations"=>3283},
    {"year"=>2020, "citations"=>4037},
    {"year"=>2021, "citations"=>5541},
    {"year"=>2022, "citations"=>3692}]
},
{
  cited_by_id: 41,
  author_id: "RxJ_l1QAAAAJ",
  all_citations: 194808,
  citations_from_2016: 106266,
  h_index: 188,
  h_from_2016: 147,
  i10_index: 1015,
  i10_from_2016: 732,
  graph:
   [{"year"=>1991, "citations"=>532},
    {"year"=>1992, "citations"=>629},
    {"year"=>1993, "citations"=>599},
    {"year"=>1994, "citations"=>691},
    {"year"=>1995, "citations"=>998},
    {"year"=>1996, "citations"=>1087},
    {"year"=>1997, "citations"=>1199},
    {"year"=>1998, "citations"=>1261},
    {"year"=>1999, "citations"=>1315},
    {"year"=>2000, "citations"=>1290},
    {"year"=>2001, "citations"=>1130},
    {"year"=>2002, "citations"=>947},
    {"year"=>2003, "citations"=>964},
    {"year"=>2004, "citations"=>906},
    {"year"=>2005, "citations"=>808},
    {"year"=>2006, "citations"=>781},
    {"year"=>2007, "citations"=>839},
    {"year"=>2008, "citations"=>1219},
    {"year"=>2009, "citations"=>1193},
    {"year"=>2010, "citations"=>1977},
    {"year"=>2011, "citations"=>3963},
    {"year"=>2012, "citations"=>6951},
    {"year"=>2013, "citations"=>9979},
    {"year"=>2014, "citations"=>12448},
    {"year"=>2015, "citations"=>14443},
    {"year"=>2016, "citations"=>17672},
    {"year"=>2017, "citations"=>19612},
    {"year"=>2018, "citations"=>22194},
    {"year"=>2019, "citations"=>20837},
    {"year"=>2020, "citations"=>16887},
    {"year"=>2021, "citations"=>17314},
    {"year"=>2022, "citations"=>9345}]
},
{
  cited_by_id: 42,
  author_id: "J-2ook4AAAAJ",
  all_citations: 182860,
  citations_from_2016: 99549,
  h_index: 186,
  h_from_2016: 144,
  i10_index: 990,
  i10_from_2016: 736,
  graph:
   [{"year"=>1992, "citations"=>484},
    {"year"=>1993, "citations"=>501},
    {"year"=>1994, "citations"=>591},
    {"year"=>1995, "citations"=>865},
    {"year"=>1996, "citations"=>979},
    {"year"=>1997, "citations"=>1092},
    {"year"=>1998, "citations"=>1159},
    {"year"=>1999, "citations"=>1216},
    {"year"=>2000, "citations"=>1189},
    {"year"=>2001, "citations"=>1027},
    {"year"=>2002, "citations"=>853},
    {"year"=>2003, "citations"=>863},
    {"year"=>2004, "citations"=>862},
    {"year"=>2005, "citations"=>724},
    {"year"=>2006, "citations"=>740},
    {"year"=>2007, "citations"=>774},
    {"year"=>2008, "citations"=>1087},
    {"year"=>2009, "citations"=>973},
    {"year"=>2010, "citations"=>1651},
    {"year"=>2011, "citations"=>3704},
    {"year"=>2012, "citations"=>7060},
    {"year"=>2013, "citations"=>9621},
    {"year"=>2014, "citations"=>11845},
    {"year"=>2015, "citations"=>14076},
    {"year"=>2016, "citations"=>17296},
    {"year"=>2017, "citations"=>18405},
    {"year"=>2018, "citations"=>20848},
    {"year"=>2019, "citations"=>19487},
    {"year"=>2020, "citations"=>15844},
    {"year"=>2021, "citations"=>16169},
    {"year"=>2022, "citations"=>8722}]
   }
])


#per popolare con gli articles e writtens relation:{utilizza chiamate api,assicurarsi di aver impostato l' api_key,usa comando che trovi su "docs/api_cmd.txt",se non encrypta, eliminare file  /config/credentials.yml.enc e riprovare }
#successivamente inserire all' interno del file che si aprira' tmp/nnnn_credential  
#la propria api_key cosi formattata => api_key:"my_api_key_google_scholar" poi salva e chiudi file. 
#SUCCESSIVAMENTE APRIRE CONSOLE E DIGITARE QUESTI COMANDI

# >bin/rails c

#m=Operations.new
#n=Author.all
#m.take_publications_from_author_ids(n)

#QUESTI COMANDI POSSONO ESTRARRE PTENZIALMENTE OLTRE 400 PUBBLICAZIONI DEGLI AUTHORS,FERMARSI DOPO 1/2 MIN PER NON BUTTARE CHIAMATE API
#DOVREBBE FARA UNA CALL PER OGNI AUTHOR,QUINDI CIRCA 40 CHIAMATE!!

=begin
reviews=Review.create([
    {
    author_id:"kq0NYnMAAAAJ",
    user_id: 1,
    review: "autore no"
},
{
    author_id:"ZjfgPLMAAAAJ",
    user_id: 2,
    review: "autore si"
},
{
    author_id:"RIg9DVEAAAAJ",
    user_id: 1,
    review: "bravo"
},
{
    author_id:"R8PPdbQAAAAJ",
    user_id: 1,
    review: "niente di che"
},
{
    author_id:"iXjCKTgAAAAJ",
    user_id: 1,
    review: "cosi cosi"
},
{
    author_id:"wT4V7isAAAAJ",
    user_id: 1,
    review: "anche no"
},
{
    author_id:"kq0NYnMAAAAJ",
    user_id: 2,
    review: "bravissimo"
},])

#DOPO AVER INSERITO DELLE PUBLICAZIONI DECOMMENTARE I SEEDS SOTTOSTANTI RAPPRESENTANTI I COMMENTI DELLE PUBBLICAZIONI
#se si e' gia popolato il db con authors,publications e reviews, commentare tutto il codice che sta sopra questo commento e lanciare 
#>bin/rails db:seed

comments=Comment.create([
    {
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC",
    user_id: 1,
    comment: "non mi piace"
},
{
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC",
    user_id: 2,
    comment: "si mi piace"
},
{
    publication_id:"ZjfgPLMAAAAJ:jgBuDB5drN8C",
    user_id: 3,
    comment: "niente di che"
},
{
    publication_id:"ZjfgPLMAAAAJ:SpbeaW3--B0C",
    user_id: 4,
    comment: "niente di che"
},
{
    publication_id:"ZjfgPLMAAAAJ:DXE8ND7PrJAC",
    user_id: 1,
    comment: "carino"
},
{
    publication_id:"ZjfgPLMAAAAJ:XiVPGOgt02cC",
    user_id: 2,
    comment: "anche no"
},
{
    publication_id:"ZjfgPLMAAAAJ:t6usbXjVLHcC",
    user_id: 3,
    comment: "bravissimo"
},])

#ALTRI SEED UTILI DA COPIARE E INCOLLARE SU /bin/rail c... RICORDARSI DI CAMBIARE GLI ID E DI SALVARE LE ENTRIES CREATE


comments=Comment.create([
{   
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC", 
    user_id: 35, 
    comment: "ottimo"
}, 
{   
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC", 
    user_id: 36, 
    comment: "non so che dire"
}, 
{   
    publication_id:"ZjfgPLMAAAAJ:DXE8ND7PrJAC", 
    user_id: 34, 
    comment: "mi piace questo sito"
}, 
{   
    publication_id:"ZjfgPLMAAAAJ:DXE8ND7PrJAC", 
    user_id: 1, 
    comment: "non ci ho capito nulla :("
}
])

reviews=Review.create([
{
    author_id:"kq0NYnMAAAAJ",
    user_id:35, 
    review: "mi piace"
}, 
{
    author_id:"iXjCKTgAAAAJ", 
    user_id:35, 
    review:"è simpatico"
},
{   
    author_id:"iXjCKTgAAAAJ", 
    user_id:36, 
    review:"buuuuuu"
},
{
    author_id:"kq0NYnMAAAAJ",
    user_id:36, 
    review: "non lo sopporto proprio"
} 
])

publication_ratings=PublicationRating.create([
{
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC",
    user_id: 1,
    rating: 5
},
{
    publication_id:"ZjfgPLMAAAAJ:jgBuDB5drN8C",
    user_id: 1,
    rating: 7
},
{
    publication_id:"ZjfgPLMAAAAJ:jgBuDB5drN8C",
    user_id: 34,
    rating: 6
},
{
    publication_id:"ZjfgPLMAAAAJ:SpbeaW3--B0C",
    user_id: 1,
    rating: 2
},
{
    publication_id:"ZjfgPLMAAAAJ:XiVPGOgt02cC",
    user_id: 2,
    rating:10
},
{
    publication_id:"ZjfgPLMAAAAJ:XiVPGOgt02cC",
    user_id: 34,
    rating:9
},
{
    publication_id:"ZjfgPLMAAAAJ:t6usbXjVLHcC",
    user_id: 1,
    rating:8
}
])

publication_ratings=PublicationRating.create([
{
    publication_id:"ZjfgPLMAAAAJ:nPTYJWkExTIC",
    user_id: 35,
    rating: 7
},
{
    publication_id:"ZjfgPLMAAAAJ:jgBuDB5drN8C",
    user_id: 35,
    rating: 8
},
{
    publication_id:"ZjfgPLMAAAAJ:jgBuDB5drN8C",
    user_id: 36,
    rating: 1
},
{
    publication_id:"ZjfgPLMAAAAJ:SpbeaW3--B0C",
    user_id: 34,
    rating: 4
},
{
    publication_id:"ZjfgPLMAAAAJ:XiVPGOgt02cC",
    user_id: 35,
    rating:10
},
{
    publication_id:"ZjfgPLMAAAAJ:XiVPGOgt02cC",
    user_id: 36,
    rating:6
}])


favorite_pubs=FavoritePublication.create(
    [
        {
            favorite_publication_id: 1,
            publication_id: "-8IsASwAAAAJ:-7ulzOJl1JYC",
            user_id: 34
        },
        {
            favorite_publication_id: 2,
            publication_id: "-8IsASwAAAAJ:-_dYPAW6P2MC",
            user_id: 34
        },
        {
            favorite_publication_id: 3, 
            publication_id: "-8IsASwAAAAJ:1qzjygNMrQYC",
            user_id: 34
        },
        {
            favorite_publication_id: 4,
            publication_id: "-8IsASwAAAAJ:2l5NCbZemmgC",
            user_id: 34
        }
    ]
)
=end