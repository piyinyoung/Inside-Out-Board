class PowerupController < ApplicationController
    
    def read
         @posts = Post.all
        
       
    
        
         
    end
     
    def write
        post = Post.new
        post.username =params[:author_name]
        post.password =params[:password]
        post.content =params[:content]
        post.my_image =params[:image_file]
        post.save
        redirect_to '/'
        
        
    end
    
  
    
     def modify
        @postmodify = Post.find(params[:id])
          $pswdm = @postmodify.password
       
        
     end
    
    
    def updatem
        one_post = Post.find(params[:id]) 
        one_post.username = params[:new_username]
        one_post.content = params[:new_content]
        if $pswdm == params[:id_passwdm]
            one_post.save
        end
        redirect_to "http://swu-piyinyoung.c9.io/"
    end
  
    
    

    def update
         one_post = Post.find(params[:id])

    end
    
    def delete
      
        
    
        @dapost = Post.find(params[:id])
         
    
         
        if (@dapost.password == params[:password_in])
            @dapost.destroy 
            @message = "삭제완료"
        
        elsif nil == params[:password_in]
        
        
        else
            @bmessage ="비번이 틀렸습니다."
        
        
        end
    
    end
          
          
    def update
        posta = Post.find(params[:id])
        posta.username =params[:new_username]
        posta.content =params[:new_content]
        
        
        redirect_to '/'
    end
    
end



     