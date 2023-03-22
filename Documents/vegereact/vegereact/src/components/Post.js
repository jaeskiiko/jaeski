import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';

// app.use(express.static('public'));

function Post(props) {
    
    return(
        <div id="post"  style={{display : 'inline', justifyContent : "center"}}>
            <Card className="card" style={{ width: '10rem', margin : '10px', display : "inline-block"}}>
                <Card.Img variant="top" src={'../img/vegeResto/'+(props.img)+'.png'} style={{ width: '128px', height : '128px', marginTop : '13px', borderRadius:'5px'}}/>
                <Card.Body>
                    <Card.Title>{props.title}</Card.Title>
                    <Card.Text>
                    {props.detail}테스트입니다
                    </Card.Text>
                </Card.Body>
            </Card>
        </div>
    )
}

export default Post;