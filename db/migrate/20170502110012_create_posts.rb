class CreatePosts < ActiveRecord::Migration
  #우리가 생성한 모델! 우리가 표(table)전체를 만들었다고 보면 됨. 이제 여기다가 행에 데이터를 입력하고자 하는 것이 t.string "title"이런 거!
  def change
    create_table :posts do |t|
      #t.저장할 내용의 형태 "변수이름"
      t.string "title"
      t.string "content"#이거 하나씩 선언해줄때마다 table에 열이 하나씩 더 생성된다, 데이터가 더 생긴다고 보면 됨
      #t.integer "number" : 이건 정수형! 
      #여기까지 쓴 후에는 db에 저장하기 위해 배시창에다가 써줄 것: rake db:migrate(여기 내용 수정할 때마다 이거 배시창에다가 써주면 됨)
      t.timestamps null: false
    end
  end
end
