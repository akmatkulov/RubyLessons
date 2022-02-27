class Camera
    def load 
        puts "Winding film."
    end 

    def take_picture
        puts "Triggering shutter."
    end 

end 

class DigitalCamera < Camera
    def load 
        puts "Inserting memory card."
    end 
end 

camera1 = Camera.new
camera1.load 
camera1.take_picture

camera2 = DigitalCamera.new 
camera2.load 
camera2.take_picture

