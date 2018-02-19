require 'ralyxa'
intent "AllRelations" do
	relations = Relation.all

	#relations.each do |relation|
		relation_str = ""
		relation_str = relation_str + "#{relations[1].name} is your #{relations[1].relation_type}. "
	#end

	tell("#{relation_str}")

end