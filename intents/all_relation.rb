require 'ralyxa'
intent "AllRelation" do
	relations = Relation.all

	relations.each do |relation|
		tell("#{relation.name} is your #{relation.relation_type}")
	end
end