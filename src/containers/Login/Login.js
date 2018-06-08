import React, { Component } from 'react';
import './Login.css';
class Login extends Component {

    state = {
        Username : '',
        Password : '',
    }

    UsernameHandler = () =>{

    }
    PasswordHandler = () => {

    }
    render() {
        return(
            <div >    
                <div className='LoginBox'>
                <p><input type='text' placeholder='Username' className='Input'/></p>
                <p><input type='password' placeholder='Password' className='Input'/></p>
                <div className='alignButton'>    
                    <button className='Button'>Login</button>
                    <button className='Button'>Sign-Up</button>
                    <p className='remember'><input type='checkbox' />Remember me</p>
                    <button className='ButtonF'>Forgot Password</button>
                </div>
                
                </div>
            </div>
        );
    }

}
export default Login;