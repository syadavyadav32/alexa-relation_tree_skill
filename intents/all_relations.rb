require 'ralyxa'
intent "AllRelations" do
	relations = Relation.all

	#relations.each do |relation|
		tell("#{relations[0].name} is your #{relations[0].relation_type}.")
	#end
end