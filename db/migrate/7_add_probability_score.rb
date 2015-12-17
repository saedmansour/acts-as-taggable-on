class AddProbabilityScore < ActiveRecord::Migration
  def change
    add_column :taggings, :score, :integer ,:default => 0

		# "Correctness" of the tagging.
		# TODO: validation that value is in ( 0 <= p < 1 )
		add_column :taggings, :probability, :float ,:default => 0.5
  end
end
      

      