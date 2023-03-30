<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminSetting.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <style>
        * {
            box-sizing: border-box;
            transition: all 0.4s;
            -webkit-tap-highlight-color: transparent;
        }

        html,
        body {
            margin: 0px;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url("https://res.cloudinary.com/drymsmld5/image/upload/v1592332136/Codepen/account%20settings/bg_ydinu0.jpg") center/cover no-repeat;
            display: block;
            justify-content: center;
            align-items: center;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        }

        .container {
            width: 80%;
            margin: 0rem auto;
            background-color: #db133a;
            padding: 2rem;
            display: flex;
            flex-direction: column;
        }

            .container h3 {
                color: #fff;
                margin: 0rem 0px 3rem 0px;
                font-weight: 600;
                letter-spacing: 0.5px;
            }

        .account-container {
            background-color: #fff;
            padding: 1.5rem;
            width: 116%;
        }

            .account-container .account-pic-container {
                width: 70px;
                height: 70px;
                border-radius: 50%;
                position: relative;
                top: calc(-35px - 1.5rem);
                left: 0px;
            }

                .account-container .account-pic-container img {
                    width: 100%;
                    height: 100%;
                    border-radius: 50%;
                }

        .account-info-container {
            transform: translateY(-10%);
        }

            .account-info-container label {
                color: #5f5f5f;
                display: block;
                font-size: 12px;
                letter-spacing: 0.58px;
            }

            .account-info-container input,
            .account-info-container textarea {
                border: none;
                border-bottom: 1px solid #c0c0c0;
                outline: none;
                width: 100%;
                margin: 0.5rem 0px;
                font-size: 15px;
            }

                .account-info-container input:active,
                .account-info-container input:focus,
                .account-info-container textarea:active,
                .account-info-container textarea:focus {
                    border-bottom-color: #db133a;
                }

            .account-info-container .account-fullname {
                display: grid;
                grid-template-columns: 1fr 1fr;
                justify-content: space-between;
                gap: 0px 10px;
            }


        .user-action {
            margin: 2rem 0px 0px 0px;
            align-self: flex-end;
        }

            .user-action button {
                all: unset;
                font-weight: 500;
                cursor: pointer;
                margin: 0px 2rem;
                color: #fff;
            }

        @media screen and (max-width:630px) {
            .container {
                width: 90%;
                padding: 1rem;
            }

            .account-container {
                width: 110%;
            }

            .account-info-container .account-fullname {
                grid-template-columns: 1fr;
                justify-content: center;
            }

            .user-action {
                margin-top: 1rem;
            }

                .user-action button {
                    margin: 0px 1rem;
                }
        }
    </style>



    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Settings Page</title>
        <link rel="stylesheet" href="style.css">
        <script src="script.js" defer></script>
    </head>

    <body>
        <div class="container">
            <h3>Account Settings</h3>
            <div class="account-container">
                <div class="account-pic-container">
                    <img src="https://res.cloudinary.com/drymsmld5/image/upload/v1592332135/Codepen/account%20settings/profile-pic_aqsbax.jpg" alt="user profile pic">
                </div>
                <div class="account-info-container">
                    <div class="account-username">
                        <label for="username">USERNAME</label>
                        <input type="text" id="username" data-uppercase="true">
                    </div>
                    <div class="account-fullname">
                        <div class="firstname">
                            <label for="firstname">FIRST NAME</label>
                            <input type="text" id="firstname" data-uppercase="true">
                        </div>
                        <div class="lastname">
                            <label for="lastname">LAST NAME</label>
                            <input type="text" id="lastname" data-uppercase="true">
                        </div>
                    </div>
                    <div class="account-email">
                        <label for="email">EMAIL</label>
                        <input type="email" id="email" data-uppercase="false">
                    </div>
                    <div class="account-bio">
                        <label for="bio">BIO</label>
                        <textarea id="bio" cols="30" rows="2" data-uppercase="false"></textarea>
                    </div>
                </div>
            </div>
            <div class="user-action">
                <button type="button" data-type="cancel">Cancel</button>
                <button type="button" data-type="save">Save</button>
            </div>
        </div>
    </body>

    </html>

</asp:Content>

