var actual_chart="chart1";
var charts= [
    document.getElementById("chart1"),
    document.getElementById("chart2"),
    document.getElementById("chart3"),
    document.getElementById("chart4"),
    document.getElementById("chart5"),
    document.getElementById("chart6")];

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
    if (placeholder=="Search by auth..."){button.addEventListener("click",function(){search_by_auth();});}
    else {button.addEventListener("click", function(){ search_by_pub();}); }
    search_box.appendChild(button);
    var icon= document.createElement("i");
    icon.setAttribute("class","fa-solid fa-magnifying-glass");
    button.appendChild(icon);
}

function searchByAuth(){ 
    document.getElementById("ByAuth").style.backgroundColor = "#79d1c3";
    if (document.getElementById("ByPub")){
        document.getElementById("ByPub").style.backgroundColor = "#c9fdd7";
    }
    createSearchBar("Search by auth...");
}

function searchByPub(){    
    document.getElementById("ByPub").style.backgroundColor = "#79d1c3";
    if (document.getElementById("ByAuth")){
        document.getElementById("ByAuth").style.backgroundColor = "#c9fdd7";
    }
    createSearchBar("Search by pub...");
}

function search_by_auth(){
    text= document.getElementById("search_text_input").value;
    const url="http://127.0.0.1:3000/authors/search/"+text;
    window.location.href = url;
}

function search_by_pub(){
    text= document.getElementById("search_text_input").value;
    const url="http://127.0.0.1:3000/publications/search/"+text;
    window.location.href = url;
}

function most_cited_authors_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart1";
    document.getElementById(actual_chart).style.visibility= "visible";
}

function auth_ratings_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart2";
    document.getElementById(actual_chart).style.visibility= "visible";
}

function most_commented_authors_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart3";
    document.getElementById(actual_chart).style.visibility= "visible";
}

function pub_per_year_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart4";
    document.getElementById(actual_chart).style.visibility= "visible";
}

function pub_ratings_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart5";
    document.getElementById(actual_chart).style.visibility= "visible";
}

function most_cited_publication_graph(){
    document.getElementById(actual_chart).style.visibility = "hidden";
    actual_chart= "chart6";
    document.getElementById(actual_chart).style.visibility= "visible";
}

//////////////////////////////////////////////////////////////////////////

function createSearchBar2(placeholder,id){
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
    button.addEventListener("click",function(){search_pub_by_auth(id);});
    search_box.appendChild(button);
    var icon= document.createElement("i");
    icon.setAttribute("class","fa-solid fa-magnifying-glass");
    button.appendChild(icon);
}

function searchPubByAuth(id){    
    document.getElementById("PubByAuth").style.backgroundColor = "#9ccc65";
    //if (document.getElementById("ByAuth")){
    //    document.getElementById("ByAuth").style.backgroundColor = "";
    //}
    createSearchBar2("Search Auth by Pub...",id);
}

function search_pub_by_auth(id){
    text= document.getElementById("search_text_input").value;
    const url="http://127.0.0.1:3000/authors/"+id+"/search_pub_by_auth/"+text;
    window.location.href = url;
}