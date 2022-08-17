function createSearchBar(placeholder, by_auth){
    var search_box= document.createElement("div");
    search_box.setAttribute("class", "search_box"); 
    var p1=document.getElementById("p1");
    p1.replaceChild(search_box, p1.childNodes[0]);
    var bar= document.createElement("input"); 
    bar.setAttribute("type", "text"); 
    bar.setAttribute("class", "search_text_input"); 
    bar.setAttribute("placeholder", placeholder);
    search_box.appendChild(bar);
    var button= document.createElement("button");
    button.setAttribute("class", "search_button");
    if (by_auth==1){
        button.addEventListener('click', function(){ search(1); });
    }
    else { button.addEventListener('click', function(){ search(0); });}
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
    createSearchBar("Search by auth...", 1);
}

function searchByPub(){    
    document.getElementById("ByPub").style.backgroundColor = "#90caf9";
    if (document.getElementById("ByAuth")){
        document.getElementById("ByAuth").style.backgroundColor = "";
    }
    createSearchBar("Search by pub...", 0);
}

function search(by_auth){
    text= document.getElementById("search_text_input").value
    if (by_auth == 1){

    }
    else {}

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