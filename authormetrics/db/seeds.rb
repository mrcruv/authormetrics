# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ { name: "Star Wars"}, { name: "Lord of the Rings"}])
#   Character.create(name: "Luke", movie: movies.first)
[
    {
        :name=>"Mike Robb",
        :link=>"https://scholar.google.com/citations?hl=en&user=kq0NYnMAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=kq0NYnMAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"kq0NYnMAAAAJ",
        :affiliations=>"Chemistry Department Imperial College",
        :email=>"Verified email at imperial.ac.uk",
        :cited_by=>185489,
        :interests=>[
            {
                :title=>"Computational chemistry",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Acomputational_chemistry",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:computational_chemistry"
            },
            {
                :title=>"Theoretical Chemistry",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Atheoretical_chemistry",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:theoretical_chemistry"
            },
            {
                :title=>"conical intersections",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aconical_intersections",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:conical_intersections"
            },
            {
                :title=>"non adiabatic dynamics",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anon_adiabatic_dynamics",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:non_adiabatic_dynamics"
            }
        ],
        :thumbnail=>"https://scholar.google.com/citations/images/avatar_scholar_56.png"
    },
    {
        :name=>"Mike A. Nalls",
        :link=>"https://scholar.google.com/citations?hl=en&user=ZjfgPLMAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=ZjfgPLMAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"ZjfgPLMAAAAJ",
        :affiliations=>"Founder/consultant with Data Tecnica International + Data science lead at NIH's Center for …",
        :email=>"Verified email at mail.nih.gov",
        :cited_by=>135572,
        :interests=>[
            {
                :title=>"statistical genetics",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Astatistical_genetics",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:statistical_genetics"
            },
            {
                :title=>"neurodegeneration",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aneurodegeneration",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:neurodegeneration"
            },
            {
                :title=>"data science",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adata_science",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:data_science"
            },
            {
                :title=>"biostatistics",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiostatistics",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biostatistics"
            },
            {
                :title=>"genomics",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Agenomics",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:genomics"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=ZjfgPLMAAAAJ&citpid=14"
    },
    {
        :name=>"mike wright",
        :link=>"https://scholar.google.com/citations?hl=en&user=RIg9DVEAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=RIg9DVEAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"RIg9DVEAAAAJ",
        :affiliations=>"imperial college",
        :email=>"Verified email at imperial.ac.uk",
        :cited_by=>103222,
        :interests=>[
            {
                :title=>"entrepreneurship",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentrepreneurship",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entrepreneurship"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=RIg9DVEAAAAJ&citpid=2"
    },
    {
        :name=>"Mike Lean (MEJ Lean)",
        :link=>"https://scholar.google.com/citations?hl=en&user=R8PPdbQAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=R8PPdbQAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"R8PPdbQAAAAJ",
        :affiliations=>"Professor of Human Nutrition, University of Glasgow",
        :email=>"Verified email at glasgow.ac.uk",
        :cited_by=>85111,
        :interests=>[
            {
                :title=>"Food",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Afood",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:food"
            },
            {
                :title=>"Nutrition",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anutrition",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:nutrition"
            },
            {
                :title=>"Obesity",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aobesity",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:obesity"
            },
            {
                :title=>"Diabetes",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adiabetes",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:diabetes"
            },
            {
                :title=>"CHD",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Achd",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:chd"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=R8PPdbQAAAAJ&citpid=3"
    },
    {
        :name=>"prof dr ir Mike SM Jetten",
        :link=>"https://scholar.google.com/citations?hl=en&user=iXjCKTgAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=iXjCKTgAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"iXjCKTgAAAAJ",
        :affiliations=>"Radboud University Nijmegen, Microbiology, TU Delft, anammox, Netherlands",
        :email=>"Verified email at science.ru.nl",
        :cited_by=>72958,
        :interests=>[
            {
                :title=>"anaerobic microbiology",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aanaerobic_microbiology",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:anaerobic_microbiology"
            },
            {
                :title=>"nitrogen cycle",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Anitrogen_cycle",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:nitrogen_cycle"
            },
            {
                :title=>"methane archaea",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amethane_archaea",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:methane_archaea"
            },
            {
                :title=>"anammox",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aanammox",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:anammox"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=iXjCKTgAAAAJ&citpid=3"
    },
    {
        :name=>"Mike Schuster",
        :link=>"https://scholar.google.com/citations?hl=en&user=L9lS9_AAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=L9lS9_AAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"L9lS9_AAAAAJ",
        :affiliations=>"Two Sigma",
        :email=>"Verified email at twosigma.com",
        :cited_by=>63480,
        :interests=>[
            {
                :title=>"machine learning",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amachine_learning",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:machine_learning"
            },
            {
                :title=>"neural networks",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aneural_networks",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:neural_networks"
            },
            {
                :title=>"deep learning",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Adeep_learning",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:deep_learning"
            },
            {
                :title=>"reinforcement learning",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Areinforcement_learning",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:reinforcement_learning"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=L9lS9_AAAAAJ&citpid=1"
    },
    {
        :name=>"Mike Wingfield",
        :link=>"https://scholar.google.com/citations?hl=en&user=wT4V7isAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=wT4V7isAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"wT4V7isAAAAJ",
        :affiliations=>"Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        :email=>"Verified email at fabi.up.ac.za",
        :cited_by=>62845,
        :interests=>[
            {
                :title=>"forest protection",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection"
            },
            {
                :title=>"mycology",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology"
            },
            {
                :title=>"entomology",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology"
            },
            {
                :title=>"biotechnology",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=wT4V7isAAAAJ&citpid=5"
    },
    {
        :name=>"Mike W. Peng",
        :link=>"https://scholar.google.com/citations?hl=en&user=z1Kz8gQAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=z1Kz8gQAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"z1Kz8gQAAAAJ",
        :affiliations=>"Jindal Chair of Global Strategy, University of Texas at Dallas",
        :email=>"Verified email at utdallas.edu",
        :cited_by=>56467,
        :interests=>[
            {
                :title=>"International Business",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Ainternational_business",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:international_business"
            },
            {
                :title=>"Global Strategy",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aglobal_strategy",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:global_strategy"
            },
            {
                :title=>"Strategic Management",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Astrategic_management",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:strategic_management"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=z1Kz8gQAAAAJ&citpid=2"
    },
    {
        :name=>"Mike Tyers",
        :link=>"https://scholar.google.com/citations?hl=en&user=9zEuqoIAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=9zEuqoIAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"9zEuqoIAAAAJ",
        :affiliations=>"Institute for Research in Immunology and Cancer, University of Montreal",
        :email=>"Verified email at umontreal.ca",
        :cited_by=>53887,
        :thumbnail=>"https://scholar.google.com/citations/images/avatar_scholar_56.png"
    },
    {
        :name=>"Mike Hulme",
        :link=>"https://scholar.google.com/citations?hl=en&user=-8IsASwAAAAJ",
        :serpapi_link=>"https://serpapi.com/search.json?author_id=-8IsASwAAAAJ&engine=google_scholar_author&hl=en",
        :author_id=>"-8IsASwAAAAJ",
        :affiliations=>"Professor of Human Geography, University of Cambridge",
        :email=>"Verified email at cam.ac.uk",
        :cited_by=>53223,
        :interests=>[
            {
                :title=>"Climate Change",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aclimate_change",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:climate_change"
            },
            {
                :title=>"Climate History",
                :serpapi_link=>"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aclimate_history",
                :link=>"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:climate_history"
            }
        ],
        :thumbnail=>"https://scholar.googleusercontent.com/citations?view_op=small_photo&user=-8IsASwAAAAJ&citpid=1"
    }
]