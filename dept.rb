class Dept
	attr_accessor :deptname , :section, :studentslist
	def initialize(name)
		self.deptname=name
		self.section={'A'=>10,'B'=>10,'C'=>10}
		self.studentslist={}
	end
	def show
		puts self.deptname
	end

	def show_details
		studentslist.each do |key,val|
			puts "#{key} has roll no #{val}"
		end
		
	end

	def get_details(stud_name)
		studentslist[stud_name]
	end

	def get_name
		deptname
	end

	def add_rollno(stud_name,rollno)
		studentslist[stud_name]=rollno
		puts studentslist[stud_name]
	end		

	def remove_rollno(stud_name)
		studentslist.delete(stud_name)
	end

	def get_seats_in_section(section)
		 self.section[section] 
	end

	def get_specific_section_rollno(section)
		sect=3-self.section[section]+1
		sect=section+sect.to_s
		self.section[section]=self.section[section]-1
		return sect
	end

	def get_section
		if self.section['A'] >= 1
			sect=10-self.section["A"]+1
			sect='A'+sect.to_s
			self.section['A']=self.section['A']-1
		elsif self.section['B'] >=1
			sect=10-self.section["B"]+1
			sect='B'+sect.to_s
			self.section['B']=self.section['B']-1
		elsif self.section['C'] >= 1
			sect=10-self.section["C"]+1
			sect='C'+sect.to_s
			self.section['C']=self.section['C']-1			
		else
			sect=0
		end
		return sect
	end

end


