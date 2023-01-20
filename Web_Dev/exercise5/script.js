
const api_url = 'https://pokeapi.co/api/v2/pokemon?offset=0&limit=20'
let next_url = null;
var count = 0

var main_container

async function getpokemons(api_url) {
    const response = await fetch(api_url);
    const data = await response.json();

    data.results.forEach(i=>{
        get_pokemon_data(i)
       
    })
    next_url = data.next
    
 }

 const load_more_pokemons = document.getElementById("load_more_button")

    load_more_pokemons.addEventListener("click",()=>{
        getpokemons(next_url) 
 })

async function get_pokemon_data(i) {
    const response = await fetch(i.url);
    const data = await response.json();
    let pokemon_name = data.species.name;
    let pokemon_weight = data.weight
    let pokemon_base_experience = data.base_experience
    let pokemon_hp = data.stats[0].base_stat
    let pokemon_attack = data.stats[1].base_stat
    let pokemon_defense = data.stats[2].base_stat
    let pokemon_special_attack = data.stats[3].base_stat
    let poke_img_url_front = data.sprites.front_default
    let poke_img_url_back = data.sprites.back_default

   
      let pokemon_move1 = data.moves[0].move.name
      let pokemon_move2 = data.moves[1].move.name
      let pokemon_move3 = data.moves[2].move.name
      let pokemon_move4 = data.moves[3].move.name

        main_container = document.getElementById("main-container");
        const main_card = document.createElement("div")
        main_card.className = "card"
        main_card.style.width = "200px"
        main_card.style.textAlign = "center"
        main_card.style.height = "auto"
        main_card.style.boxShadow = "0 4px 8px 0 rgba(0,0,0,0.2)"
        main_card.style.transition = "0.3s"

        const poke_img = document.createElement("img")

        poke_img.addEventListener("mouseover",()=>{
            poke_img.src= poke_img_url_back
            return poke_img.src
        })

        poke_img.addEventListener("mouseout",()=>{
            poke_img.src= poke_img_url_front
            return poke_img.src
        })

        const name_para = document.createElement("p")
        const weight_para = document.createElement("p")
        const base_exp_para = document.createElement("p")
        const hp_para = document.createElement("p")
        const load_more_button = document.createElement("button")
        load_more_button.class = "load_more_button"

        poke_img.src= poke_img_url_front
        name_para.innerText = "Name = " + pokemon_name
        weight_para.innerText = "Weight =" + pokemon_weight
        base_exp_para.innerText = "Base Experience = "+pokemon_base_experience
        hp_para.innerText = "Hp = " + pokemon_hp

        const show_more_button = document.createElement("button")
        show_more_button.textContent = "Show more"
        show_more_button.width = "auto"

        show_more_button.addEventListener('click',()=>{
            document.getElementById('iframe_1').srcdoc= `<!DOCTYPE html>
            <div style="text-align:center;" >
            <img width="80%" src="${poke_img_url_front}"/> 
            <h2>Name: ${pokemon_name}</h2> 
            <h2>Weight: ${pokemon_weight}</h2> 
            <h2>Base Exp: ${pokemon_base_experience}</h2>
            <h2>Hp: ${pokemon_hp}</h2>
            <h2>Attack: ${pokemon_attack}</h2>
            <h2>Defense: ${pokemon_defense}</h2>
            <h2>Special-Attack: ${pokemon_special_attack}</h2>
            <h2>Moves: ${pokemon_move1},${pokemon_move2},${pokemon_move3},${pokemon_move4}</h2>
            </div>`
        })

        main_container.appendChild(main_card)

        main_card.appendChild(poke_img)
        main_card.appendChild(name_para);
        main_card.appendChild(weight_para);
        main_card.appendChild(base_exp_para);
        main_card.appendChild(hp_para);
        main_card.appendChild(show_more_button);

          
    let a = document.querySelectorAll(".card")

        
}


  
let search_pokemon = ()  =>{
     var value = document.getElementById("input1").value
    var result = Array.from(document.getElementById("main-container").children).filter((element)=>{
        return element.children[1].innerHTML.includes(value)
    })
    console.log(result)
    document.getElementById("main-container").replaceChildren(...result)

}

let sorted_weights = () =>{

    var result = Array.from(document.getElementById("main-container").children).sort((a,b)=>{

        
        a = (String(a.children[2].innerText).split("=")[1])
        b = (String(b.children[2].innerText).split("=")[1])
        console.log(a-b)
         return a-b
    })
    document.getElementById("main-container").replaceChildren(...result)
    console.log("sorted")
}

let sorted_name = () =>{

    var result = Array.from(document.getElementById("main-container").children).sort((a,b)=>{
        a = (String(a.children[1].innerText).split("=")[1])
        b = (String(b.children[1].innerText).split("=")[1])
        if(a>b == true){
            return 1
        }
        // else{
        //     ret
        // }

         return -1
    })
    document.getElementById("main-container").replaceChildren(...result)
    console.log("sorted")
}


let sorted_base_exp = () =>{

    var result = Array.from(document.getElementById("main-container").children).sort((a,b)=>{
        a = (String(a.children[3].innerText).split("=")[1])
        b = (String(b.children[3].innerText).split("=")[1])
        console.log(a-b)
         return a-b
    })
    document.getElementById("main-container").replaceChildren(...result)
    console.log("sorted")
}

console.log(document.getElementById("main-container"))


getpokemons(api_url);

