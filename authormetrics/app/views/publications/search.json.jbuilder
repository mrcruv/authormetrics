json.array! @publications, partial: "publications/publication", as: :publication
json.extract! publication, :id, :publication_id, :title, :link, :published_on, :cited_by, :pub_year, :created_at, :updated_at
json.url publication_url(publication, format: :json)
