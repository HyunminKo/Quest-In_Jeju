let quest_id = 0;
// 임시로 1번 user
let user_id = 1;


function post_user_quest(){

    console.log("enter");

    const params = {
        "quest_id": quest_id,
        "user_id" : user_id
    };

    $.ajax({
        // 참고하세요 여기 남겨도 되나요?
        // https://ddo-o.tistory.com/94
        url: "/servlet/UserQuestPlayServlet",
        type: "POST",
        data: JSON.stringify(params),
        success: function() {
            alert("퀘스트가 시작되었습니다")
        }
    });
}


function confirm_user_accept(id) {
    quest_id = id;

    if(confirm('퀘스트를 시작하시겠습니까?')){
        post_user_quest();
        return true;
    };
}