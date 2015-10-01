require 'xcodeproj'

module XcodeprojSetting
	def setBundleIdentifier(projPath)
		puts "XcodeprojSetting setBundleIdentifier";
		xcproj = Xcodeproj::Project.new(projPath)
		xcproj.initialize_from_file
		xcproj.save('project2.pbxproj')
	end
	
	module_function :setBundleIdentifier

	def setBundleShortVersions
		puts "XcodeprojSetting setBundleShortVersions";
	end
	module_function :setBundleShortVersions

	def setBundleVersions
		puts "XcodeprojSetting setBundleVersions";
	end
	module_function :setBundleVersions


	def setIcon
		puts "XcodeprojSetting setIcon";
	end
	module_function :setIcon

	def setBundleDisplayName
		puts "XcodeprojSetting setBundleDisplayName";
	end
	module_function :setBundleDisplayName

end
