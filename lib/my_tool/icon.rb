require 'fastimage_resize'
require 'fileutils'

module Icon
    # Your code goes here...
    class Creator
        def initialize(name = "ios")
            @platform = name
        end
        def genIcon
            if (@platform.casecmp "ios") == 0
                @imagesPath = 'images/AppIcon.appiconset'
                if !File.exist?(@imagesPath)
                    FileUtils.mkdir_p @imagesPath
                end
                FastImage.resize("app.png", 29, 29, :outfile=>"#{@imagesPath}/icon-29.png")
                FastImage.resize("app.png", 29, 29, :outfile=>"#{@imagesPath}/icon-29@2x.png")
                FastImage.resize("app.png", 40, 40, :outfile=>"#{@imagesPath}/icon-40.png")
                FastImage.resize("app.png", 80, 80, :outfile=>"#{@imagesPath}/icon-40@2x.png")
                FastImage.resize("app.png", 50, 50, :outfile=>"#{@imagesPath}/icon-50.png")
                FastImage.resize("app.png", 100, 100, :outfile=>"#{@imagesPath}/icon-50@2x.png")
                FastImage.resize("app.png", 57, 57, :outfile=>"#{@imagesPath}/icon-57.png")
                FastImage.resize("app.png", 114, 114, :outfile=>"#{@imagesPath}/icon-57@2x.png")
                FastImage.resize("app.png", 120, 120, :outfile=>"#{@imagesPath}/icon-60@2x.png")
                FastImage.resize("app.png", 180, 180, :outfile=>"#{@imagesPath}/icon-60@3x.png")
                FastImage.resize("app.png", 72, 72, :outfile=>"#{@imagesPath}/icon-72.png")
                FastImage.resize("app.png", 144, 144, :outfile=>"#{@imagesPath}/icon-72@2x.png")
                FastImage.resize("app.png", 76, 76, :outfile=>"#{@imagesPath}/icon-76.png")
                FastImage.resize("app.png", 152, 152, :outfile=>"#{@imagesPath}/icon-76@2x.png")
            else
                @imagesPath = 'images/res/'
                @drawable = "#{@imagesPath}/drawable"
                @drawable_hdpi = "#{@imagesPath}/drawable-hdpi"
                @drawable_ldpi = "#{@imagesPath}/drawable-ldpi"
                @drawable_mdpi = "#{@imagesPath}/drawable-mdpi"
                @drawable_xhdpi = "#{@imagesPath}/drawable-xdpi"
                if !File.exist?(@drawable)
                    FileUtils.mkdir_p @drawable
                    FileUtils.mkdir_p @drawable_hdpi
                    FileUtils.mkdir_p @drawable_ldpi
                    FileUtils.mkdir_p @drawable_mdpi
                    FileUtils.mkdir_p @drawable_xhdpi
                end
                FastImage.resize("app.png", 96, 96, :outfile=>"#{@drawable}/icon.png")
                FastImage.resize("app.png", 50, 50, :outfile=>"#{@drawable}/ic_stat_gcm.png")
                FastImage.resize("app.png", 72, 72, :outfile=>"#{@drawable_hdpi}/icon.png")
                FastImage.resize("app.png", 38, 38, :outfile=>"#{@drawable_hdpi}/ic_stat_gcm.png")
                FastImage.resize("app.png", 36, 36, :outfile=>"#{@drawable_ldpi}/icon.png")
                FastImage.resize("app.png", 19, 19, :outfile=>"#{@drawable_ldpi}/ic_stat_gcm.png")
                FastImage.resize("app.png", 48, 48, :outfile=>"#{@drawable_mdpi}/icon.png")
                FastImage.resize("app.png", 25, 25, :outfile=>"#{@drawable_mdpi}/ic_stat_gcm.png")
                FastImage.resize("app.png", 96, 96, :outfile=>"#{@drawable_xhdpi}/icon.png")
                FastImage.resize("app.png", 50, 50, :outfile=>"#{@drawable_xhdpi}/ic_stat_gcm.png")
            end
        end
    end
end
