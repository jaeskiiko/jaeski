import Post from './Post.js'

import Test from './Test.js'

function PostList(props) {  // resto db 불러온 data 넣어놓는 list

    const result = props.resto.map(
        (data)=>(<Post no={data.resto_no} title={data.resto_name} detail={data.resto_detail} img={data.imageFileName}/>)
    )
    return(
        <div id="postList">
            {result}
        </div>
    )
}

export default PostList;