
function createSearchBar2(placeholder){
    var search_box= document.createElement("div");
    search_box.setAttribute("class", "search_box"); 
    var p1=document.getElementById("p2");
    p1.replaceChild(search_box, p1.childNodes[0]);
    var bar= document.createElement("input"); 
    bar.setAttribute("type", "text"); 
    bar.setAttribute("class", "search_text_input"); 
    bar.setAttribute("placeholder", placeholder);
    search_box.appendChild(bar);
    var button= document.createElement("button");
    button.setAttribute("class", "search_button");
    search_box.appendChild(button);
    var icon= document.createElement("i");
    icon.setAttribute("class","fa-solid fa-magnifying-glass");
    button.appendChild(icon);
}

function searchByPub2(){    
    document.getElementById("ByPub").style.backgroundColor = "#90caf9";
    createSearchBar("Search by pub...");
}