

function createSearchBar(placeholder){
    var search_box= document.createElement("div");
    search_box.setAttribute("class", "search_box"); 
    var p1=document.getElementById("p1");
    p1.replaceChild(search_box, p1.childNodes[0]);
    var bar= document.createElement("input"); 
    bar.setAttribute("type", "text"); 
    bar.setAttribute("class", "search_text_input");
    bar.setAttribute("id", "search_text_input") 
    bar.setAttribute("placeholder", placeholder);
    search_box.appendChild(bar);
    var button= document.createElement("button");
    button.setAttribute("class", "search_button");
    var text= "http://127.0.0.1:3000/authors/search/"+
    button.setAttribute("onclik", `location.href='${s}'`);
    //if (placeholder=="Search by auth..."){button.addEventListener("click",function(){search_by_auth();});}
    //else {button.addEventListener("click", function(){ search_by_pub();}); }
    search_box.appendChild(button);
    var icon= document.createElement("i");
    icon.setAttribute("class","fa-solid fa-magnifying-glass");
    button.appendChild(icon);
}

function searchByAuth(){ 
    document.getElementById("ByAuth").style.backgroundColor = "#90caf9";
    if (document.getElementById("ByPub")){
        document.getElementById("ByPub").style.backgroundColor = "";
    }
    createSearchBar("Search by auth...");
}

function searchByPub(){    
    document.getElementById("ByPub").style.backgroundColor = "#90caf9";
    if (document.getElementById("ByAuth")){
        document.getElementById("ByAuth").style.backgroundColor = "";
    }
    createSearchBar("Search by pub...");
}
/*
function search_by_auth(){
    text= document.getElementById("search_text_input").value;
    const url='http://127.0.0.1:3000/authors/search/'+text;
    const http=new XMLHttpRequest();
    http.open("GET", url);
    http.send();
    http.onreadystatechange = (e) => {
        console.log(http.responseText) 
    }
    alert(http.responseText);
}
*/
function search_by_pub(){
    text= document.getElementById("search_text_input").value;
    alert(text);
}





    /*
function provaPub(){

    const searchInput = document.getElementById("ByPub");
    const s=createSearchBar("Search by pub...");
    // listen for user events
    s.addEventListener("keyup", (event) => {
        const { value } = event.target;
        window.location.replace("'http://127.0.0.1:3000/publication/search/'");
    });
}
*/