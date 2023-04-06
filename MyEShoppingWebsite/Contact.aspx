<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Contact</title>
    <link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="css/font-awesome.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            * {
                margin: 0;
                box-sizing: border-box;
            }

            /*        body {
            background-color: #6a9ac4;
        }*/

            #contact {
                /*background-color: #6a9ac4;*/
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .contact-box {
                width: clamp(100px, 90%, 1000px);
                margin: 80px 50px;
                display: flex;
                flex-wrap: wrap;
            }

            .contact-links, .contact-form-wrapper {
                width: 50%;
                padding: 8% 5% 10% 5%;
            }


            .contact-links {
                background-color: #1f2e43;
                background: radial-gradient( circle at 55% 92%, #426691 0 12%, transparent 12.2% ), radial-gradient( circle at 94% 72%, #426691 0 10%, transparent 10.2% ), radial-gradient( circle at 20% max(78%, 350px), #263a53 0 7%, transparent 7.2% ), radial-gradient( circle at 0% 0%, #263a53 0 40%, transparent 40.2% ), #1f2e43;
                border-radius: 10px 0 0 10px;
            }

            .contact-form-wrapper {
                background-color: #ffffff8f;
                border-radius: 0 10px 10px 0;
            }



            .contact-links {
                border-radius: 10px 10px 0 0;
            }

            .contact-form-wrapper {
                border-radius: 0 0 10px 10px;
            }

            }


            h2 {
                font-family: 'Arimo', sans-serif;
                color: #fff;
                font-size: clamp(30px, 6vw, 60px);
                letter-spacing: 2px;
                text-align: center;
                transform: scale(.95, 1);
            }

            .links {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                padding-top: 50px;
            }

            .link {
                margin: 10px;
                cursor: pointer;
            }

            /*        img {
            width: 45px;
            height: 45px;
            filter: hue-rotate(220deg) drop-shadow(2px 4px 4px #0006);
            transition: 0.2s;
            user-select: none;
        }
*/
            img:hover {
                transform: scale(1.1, 1.1);
            }

            img:active {
                transform: scale(1.1, 1.1);
                filter: hue-rotate(220deg) drop-shadow(2px 4px 4px #222) sepia(0.3);
            }

            .form-item {
                position: relative;
            }

            label, input, textarea {
                font-family: 'Poppins', sans-serif;
            }

            label {
                position: absolute;
                top: 10px;
                left: 2%;
                color: #999;
                font-size: clamp(14px, 1.5vw, 18px);
                pointer-events: none;
                user-select: none;
            }

            input, textarea {
                width: 100%;
                outline: 0;
                border: 1px solid #ccc;
                border-radius: 4px;
                margin-bottom: 20px;
                padding: 12px;
                font-size: clamp(15px, 1.5vw, 18px);
            }

                input:focus + label,
                input:valid + label,
                textarea:focus + label,
                textarea:valid + label {
                    font-size: clamp(13px, 1.3vw, 16px);
                    color: #777;
                    top: -20px;
                    transition: all .225s ease;
                }

            .submit-btn {
                background-color: #fd917e;
                filter: drop-shadow(2px 2px 3px #0003);
                color: #fff;
                font-family: "Poppins",sans-serif;
                font-size: clamp(16px, 1.6vw, 18px);
                display: block;
                padding: 12px 20px;
                margin: 2px auto;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                user-select: none;
                transition: 0.2s;
            }

                .submit-btn:hover {
                    transform: scale(1.1, 1.1);
                }

                .submit-btn:active {
                    transform: scale(1.1, 1.1);
                    filter: sepia(0.5);
                }


            .links {
                padding-top: 30px;
            }

            img {
                width: 38px;
                height: 38px;
            }

            }
        </style>

        <style>
            .cta {
                display: flex;
                padding: 11px 33px;
                text-decoration: none;
                font-family: 'Poppins', sans-serif;
                font-size: 25px;
                color: white;
                background: #6225E6;
                transition: 1s;
                box-shadow: 6px 6px 0 black;
                transform: skewX(-15deg);
                border: none;
            }

                .cta:focus {
                    outline: none;
                }

                .cta:hover {
                    transition: 0.5s;
                    box-shadow: 10px 10px 0 #FBC638;
                }

                .cta .second {
                    transition: 0.5s;
                    margin-right: 0px;
                }

                .cta:hover .second {
                    transition: 0.5s;
                    margin-right: 45px;
                }

            .span {
                transform: skewX(15deg)
            }

            .second {
                width: 20px;
                margin-left: 30px;
                position: relative;
                top: 12%;
            }

            .one {
                transition: 0.4s;
                transform: translateX(-60%);
            }

            .two {
                transition: 0.5s;
                transform: translateX(-30%);
            }

            .cta:hover .three {
                animation: color_anim 1s infinite 0.2s;
            }

            .cta:hover .one {
                transform: translateX(0%);
                animation: color_anim 1s infinite 0.6s;
            }

            .cta:hover .two {
                transform: translateX(0%);
                animation: color_anim 1s infinite 0.4s;
            }
        </style>

    </head>
    <body class="bg-dark">
        <section id="contact">
            <div class="contact-box">
                <div class="contact-links">
                    <h2 class="text-info">CONTACT</h2>
                    <div class="links">
                        <div class="link">
                            <a>
                                <img src="https://i.postimg.cc/m2mg2Hjm/linkedin.png" alt="linkedin"></a>
                        </div>
                        <div class="link">
                            <a>
                                <img src="https://i.postimg.cc/YCV2QBJg/github.png" alt="github"></a>
                        </div>
                        <div class="link">
                            <a>
                                <img src="https://i.postimg.cc/W4Znvrry/codepen.png" alt="codepen"></a>
                        </div>
                        <div class="link">
                            <a>
                                <img src="https://i.postimg.cc/NjLfyjPB/email.png" alt="email"></a>
                        </div>
                    </div>
                </div>
                <div class="contact-form-wrapper" style="background-color: #6a9ac4;">
                    <form>
                        <div class="form-item">
                            <input type="text" name="sender" required>
                            <label>Name:</label>
                        </div>
                        <div class="form-item">
                            <input type="text" name="email" required>
                            <label>Email:</label>
                        </div>
                        <div class="form-item">
                            <textarea class="" name="message" required></textarea>
                            <label>Message:</label>
                        </div>
                        <div class="d-flex align-content-center justify-content-center">
                            <button class="cta">
                                <span class="span">Send</span>
                                <span class="second">
                                    <svg width="50px" height="20px" viewBox="0 0 66 43" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                        <g id="arrow" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <path class="one" d="M40.1543933,3.89485454 L43.9763149,0.139296592 C44.1708311,-0.0518420739 44.4826329,-0.0518571125 44.6771675,0.139262789 L65.6916134,20.7848311 C66.0855801,21.1718824 66.0911863,21.8050225 65.704135,22.1989893 C65.7000188,22.2031791 65.6958657,22.2073326 65.6916762,22.2114492 L44.677098,42.8607841 C44.4825957,43.0519059 44.1708242,43.0519358 43.9762853,42.8608513 L40.1545186,39.1069479 C39.9575152,38.9134427 39.9546793,38.5968729 40.1481845,38.3998695 C40.1502893,38.3977268 40.1524132,38.395603 40.1545562,38.3934985 L56.9937789,21.8567812 C57.1908028,21.6632968 57.193672,21.3467273 57.0001876,21.1497035 C56.9980647,21.1475418 56.9959223,21.1453995 56.9937605,21.1432767 L40.1545208,4.60825197 C39.9574869,4.41477773 39.9546013,4.09820839 40.1480756,3.90117456 C40.1501626,3.89904911 40.1522686,3.89694235 40.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                                            <path class="two" d="M20.1543933,3.89485454 L23.9763149,0.139296592 C24.1708311,-0.0518420739 24.4826329,-0.0518571125 24.6771675,0.139262789 L45.6916134,20.7848311 C46.0855801,21.1718824 46.0911863,21.8050225 45.704135,22.1989893 C45.7000188,22.2031791 45.6958657,22.2073326 45.6916762,22.2114492 L24.677098,42.8607841 C24.4825957,43.0519059 24.1708242,43.0519358 23.9762853,42.8608513 L20.1545186,39.1069479 C19.9575152,38.9134427 19.9546793,38.5968729 20.1481845,38.3998695 C20.1502893,38.3977268 20.1524132,38.395603 20.1545562,38.3934985 L36.9937789,21.8567812 C37.1908028,21.6632968 37.193672,21.3467273 37.0001876,21.1497035 C36.9980647,21.1475418 36.9959223,21.1453995 36.9937605,21.1432767 L20.1545208,4.60825197 C19.9574869,4.41477773 19.9546013,4.09820839 20.1480756,3.90117456 C20.1501626,3.89904911 20.1522686,3.89694235 20.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                                            <path class="three" d="M0.154393339,3.89485454 L3.97631488,0.139296592 C4.17083111,-0.0518420739 4.48263286,-0.0518571125 4.67716753,0.139262789 L25.6916134,20.7848311 C26.0855801,21.1718824 26.0911863,21.8050225 25.704135,22.1989893 C25.7000188,22.2031791 25.6958657,22.2073326 25.6916762,22.2114492 L4.67709797,42.8607841 C4.48259567,43.0519059 4.17082418,43.0519358 3.97628526,42.8608513 L0.154518591,39.1069479 C-0.0424848215,38.9134427 -0.0453206733,38.5968729 0.148184538,38.3998695 C0.150289256,38.3977268 0.152413239,38.395603 0.154556228,38.3934985 L16.9937789,21.8567812 C17.1908028,21.6632968 17.193672,21.3467273 17.0001876,21.1497035 C16.9980647,21.1475418 16.9959223,21.1453995 16.9937605,21.1432767 L0.15452076,4.60825197 C-0.0425130651,4.41477773 -0.0453986756,4.09820839 0.148075568,3.90117456 C0.150162624,3.89904911 0.152268631,3.89694235 0.154393339,3.89485454 Z" fill="#FFFFFF"></path>
                                        </g>
                                    </svg>
                                </span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </section>

    </body>
    </html>

</asp:Content>
