<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<style>
    #sidebar {
        overflow: hidden;
        z-index: 3;
        width: 15%;
    }
    #sidebar .list-group {
        min-width: 15%;
        background-color: #ffc107;
        min-height: 100vh;
    }

    #sidebar .list-group-item {
        border-radius: 0;
        background-color: #ffc107;
        color: #1b1e21;
        border-left: 0;
        border-right: 0;
        border-color: #4CAF50;
        white-space: nowrap;
        text-align: center;
        font-size: 30px;
        font-weight: bold;
    }

    /* highlight active menu */
    #sidebar .list-group-item:not(.collapsed) {
        background-color: #ffc107;
    }

    /* closed state */
    #sidebar .list-group .list-group-item[aria-expanded="false"]::after {
        content: " \f0d7";
        font-family: FontAwesome;
        display: inline;
        text-align: right;
        padding-left: 5px;
    }

    /* open state */
    #sidebar .list-group .list-group-item[aria-expanded="true"] {
        background-color: #ffc107;
    }
    #sidebar .list-group .list-group-item[aria-expanded="true"]::after {
        content: " \f0da";
        font-family: FontAwesome;
        display: inline;
        text-align: right;
        padding-left: 5px;
    }

    /* level 1*/
    #sidebar .list-group .collapse .list-group-item,
    #sidebar .list-group .collapsing .list-group-item  {
        padding-left: 20px;
    }

    /* level 2*/
    #sidebar .list-group .collapse > .collapse .list-group-item,
    #sidebar .list-group .collapse > .collapsing .list-group-item {
        padding-left: 30px;
    }

    /* level 3*/
    #sidebar .list-group .collapse > .collapse > .collapse .list-group-item {
        padding-left: 40px;
    }

    @media (max-width:768px) {
        #sidebar {
            min-width: 35px;
            max-width: 40px;
            overflow-y: auto;
            overflow-x: visible;
            transition: all 0.25s ease;
            transform: translateX(-45px);
            position: fixed;
        }

        #sidebar.show {
            transform: translateX(0);
        }

        #sidebar::-webkit-scrollbar{ width: 0px; }

        #sidebar, #sidebar .list-group {
            min-width: 35px;
            overflow: visible;
        }

        #sidebar .list-group > .list-group-item {
            text-align: center;
            padding: .75rem .5rem;
        }
        /* hide caret icons of top level when collapsed */
        #sidebar .list-group > .list-group-item[aria-expanded="true"]::after,
        #sidebar .list-group > .list-group-item[aria-expanded="false"]::after {
            display:none;
        }
    }

</style>

<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            <div class="list-group border-0 card text-center text-md-left">
                <a href="/client/page" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><span class="d-none d-md-inline"> 공지사항 </span> </a>
                <a href="/client/estimate" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><span class="d-none d-md-inline"> 견적문의 </span></a>
                <a href="/client/qna" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><span class="d-none d-md-inline"> QNA </span></a>
                <a href="/faq/list" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><span class="d-none d-md-inline"> FAQ </span></a>

            </div>
        </div>

    </div>
</div>