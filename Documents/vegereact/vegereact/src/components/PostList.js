import Post from './Post.js'

function PostList(props) {

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