/* eslint-disalbed */

import Card from 'react-bootstrap/Card';
import { Routes, Route, Link, useNavigate } from 'react-router-dom';


// app.use(express.static('public'));

function Post(props) {  // PostList에 들어갈 post(card) 내용
    
    // let navigate = useNavigate(); // 페이지 이동 도와줌

    return(
        <Link to={`/detail/${props.no}`} style={{textDecoration : 'none', color : 'black'}}>
            <div id="post"  style={{display : 'inline', justifyContent : "center"}}>
                <Card className="card" style={{ width: '10rem', margin : '10px', display : "inline-block"}}>
                    <Card.Img variant="top" src={'../img/vegeResto/'+(props.img)+'.png'} style={{ width: '128px', height : '128px', marginTop : '13px', borderRadius:'5px'}}/>
                    <Card.Body>
                        <Card.Title>{props.title}</Card.Title>
                        <Card.Text>
                        {props.detail}
                        </Card.Text>
                    </Card.Body>
                </Card>
            </div>
        </Link>
    )
}

export default Post;