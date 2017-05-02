class BoardController < ApplicationController
    def index
        @every = Post.all
        #post의 모든 것을 가져와서 every변수에 담아주세요
    end

    def new
    end

    def create
        #생성하는 프로세스이기에 골벵이 안 씀, 골벵이 쓰는 곳은 view로 보여주고자 할 때
        @tt=params[:title]
        @con=params[:content]

        new_post = Post.new
        #엑셀에서 행 하나 추가한 것 같은 기능!
        #무조건 대문자로 post로! 아까 우리가 model이름을 post라고 했으므로 그 이름의 앞자리는 꼭 대문자로 설정
        new_post.title=@tt
        new_post.content=@con
        #그리고 그 행에 이렇게 데이터를 쓰겠다!
        new_post.save
        #내가 위와 같이 저장해주겠다 라는 것을 알리는 코드
        
        redirect_to "/index"
        #create를 생성하고 바로 index페이지로 넘어가서 index페이지 뷰를 보여주라는 뜻
    end
    
    def destroy
    end
end
