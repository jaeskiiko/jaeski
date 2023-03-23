import { useSelector } from "react-redux"
import { useParams } from "react-router-dom"

function Test(props) {

    // let a = useSelector((state)=>{ return state })
    // console.log(a)

    let {id} = useParams();

    return (
        <>
        <div>안녕하세요</div>
        <div>{props.resto[(id-1)].resto_name}</div>
        </>
    )
}

export default Test