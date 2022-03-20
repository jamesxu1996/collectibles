class Listing < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_many :favourites
    has_many :listings_features, dependent: :destroy
    has_many :features, through: :listings_features
    has_one_attached :picture

    # sets conditions new, almost new, used, well loved
    enum condition: {brand_new: 1, almost_new: 2, used: 3, well_loved: 4}


    # data validations presence, name length, price numericality, description length
    validates :name, presence: true, length: {minimum: 3}
    validates :price, presence: true, length: {maximum: 6}
    validates :description, presence: true, length: {maximum: 255}

    # sanitise data
    before_save :remove_whitespace
    before_save :remove_drugs
    before_validation :convert_price_to_cents, if: :price_changed?

    private

    # removes whitespaces from user input data
    def remove_whitespace
        self.name = self.name.strip
        self.description = self.description.strip
    end

    def remove_drugs
        self.name = self.name.gsub(/drug/i, 'substance')
        self.description = self.name.gsub(/drug/i, 'substance')
    end

    # conversion of set price to cents
    def convert_price_to_cents
        self.price = (self.attributes_before_type_cast["price"].to_f * 100)
    end
end
