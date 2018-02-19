require 'ralyxa'
intent "AllRelations" do
	relations = Relation.all

	#relations.each do |relation|
		#relation_str = ""
		#relation_str = relation_str + "#{relations[0].name} is your #{relations[0].relation_type}. "
	#end

	#tell("#{relation_str}")
	tell("hi")
end