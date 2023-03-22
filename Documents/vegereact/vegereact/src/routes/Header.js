import 'bootstrap/dist/css/bootstrap.min.css';
import { Container, Nav, Navbar } from 'react-bootstrap'
import '../css/Header.css'

function Header() {
    return (
     <>
    <div className="nav-container">
        <div className="logoDiv" />
            
        <div className="nav-item"><a href="#" className="aTag">Login</a></div>
        <div className="nav-item"><a href="#" className="aTag">join</a></div>
        {/* <!-- <div style="flex-grow:1"></div> --> */}
      </div>

      <div className="main-background">
        <form action="https://www.google.com/search" method="GET" className="search">
            <div className="mx-auto mt-5 search-bar input-group mb-3">
                <input name="q" type="text" className="form-control rounded-pill searchBar" placeholder="지역 또는 식당명 검색"
                    aria-label="Recipient's username" aria-describedby="button-addon2"/>
                <div className="input-group-append">
                </div>
            </div>
        </form>
      </div>

      <Navbar bg="light" expand="lg">
      <Container>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="me-auto">
            <Nav.Link href="#home" className="nav-unit">내 예약</Nav.Link>
            <Nav.Link href="#link" className="nav-unit">식당</Nav.Link>
            <Nav.Link href="#link" className="nav-unit">커뮤니티</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
    
        
      </>
    )
}

export default Header;