class Instructor
    attr_accessor :name
    @@all =[]
    def initialize (name)
        @name =name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)

        BoatingTest.all.each do |b_t|
            if b_t.student ==student && b_t.test_name== test_name
                b_t.test_status ="passed"
                return nil
            end
        end
        BoatingTest.new(student,test_name,"passed",self)
        return nil
    end

    def fail_student(student, test_name)

        BoatingTest.all.each do |b_t|
            if b_t.student ==student && b_t.test_name== test_name
                b_t.test_status ="failed"
                return nil
            end
        end
        BoatingTest.new(student,test_name,"failed",self)
        return nil
    end


end
