class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_listings = ProjectBacker.all.select{|listing| listing.backer == self}
        backer_listings.map {|listing| listing.project}
    end
end