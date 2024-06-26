require "administrate/base_dashboard"

class KlaimDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    benefit: Field::BelongsTo,
    status: Field::BelongsTo,
    id: Field::Number,
    tanggal: Field::DateTime,
    jumlah: Field::String.with_options(searchable: false),
    photo: Field::String,
    tempat: Field::String,
    verify: Field::SelectBasic.with_options({
      choices: ['PENDING', 'ACCEPTED', 'REJECTED']
    }),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    kredit: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  user
  benefit
  status
  id
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  user
  benefit
  status
  id
  tanggal
  jumlah
  photo
  tempat
  verify
  created_at
  updated_at
  kredit
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  user
  benefit
  status
  tanggal
  jumlah
  photo
  tempat
  verify
  kredit
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how klaims are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(klaim)
  #   "Klaim ##{klaim.id}"
  # end
end
